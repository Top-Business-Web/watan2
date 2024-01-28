<?php

namespace App\Http\Controllers\Api\Chat;

use App\Http\Controllers\Controller;
use App\Http\Resources\Chat\OneRoomResource;
use App\Http\Resources\Chat\RoomMessagesResource;
use App\Http\Resources\Chat\RoomResource;
use App\Models\Room;
use App\Models\RoomMessage;
use App\Traits\DefaultImage;
use App\Traits\NotificationTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rules\RequiredIf;

class ChatController extends Controller
{
    use DefaultImage, NotificationTrait;

    public function myRooms()
    {
        $data = Room::where('from_user_id', auth()->user()->id)->orwhere('to_user_id', auth()->user()->id)->orderBy('updated_at','desc')->get();
        return helperJson(RoomResource::collection($data));
    }//end fun

    /**
     * @param Request $request
     * @return void
     */
    public function getRoom(Request $request)
    {
        $rules = [
            'room_id' => 'required|exists:rooms,id',
        ];
        $validator = Validator::make($request->all(), $rules, [
            'room_id.exists' => 404,
        ]);
        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    404 => 'Failed,Room not found',
                ];
                $code = collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return response()->json(['data' => null, 'message' => $validator->errors(), 'code' => 422], 200);
        }

        $data = Room::find($request->room_id);

        return helperJson(new OneRoomResource($data));

    }//end fun
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function storeRoom(Request $request)
    {
        $rules = [
            'to_user_id' => 'required|exists:users,id',
            'post_id' => 'required_without:project_id',
            'project_id' => 'required_without:post_id',
        ];
        $validator = Validator::make($request->all(), $rules, [
            'to_user_id.exists' => 405,
        ]);
        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    405 => 'Failed,User not found',
                ];
                $code = collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return response()->json(['data' => null, 'message' => $validator->errors(), 'code' => 422], 200);
        }
        $data = $request->all();

        $data['from_user_id'] = auth()->user()->id;
        $to_user_id = $data['to_user_id'];
        $from_user_id = $data['from_user_id'];
        $room = Room::where(function($query) use ($to_user_id,$from_user_id){
            $query->where(function ($query) use ($to_user_id,$from_user_id) {
                $query->where('to_user_id', $to_user_id);
                $query->where('from_user_id', $from_user_id);
            });
            $query->orWhere(function ($query) use ($to_user_id,$from_user_id) {
                $query->where('to_user_id', $from_user_id);
                $query->where('from_user_id', $to_user_id);
            });
        })->first();

        if(!$room) {
            $room = Room::create($data);
        }
        return helperJson(new RoomResource($room));
    }//end fun
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function storeMessage(Request $request)
    {
        $rules = [
            'room_id' => 'required|exists:rooms,id',
            'to_user_id' => 'required|exists:users,id',
            'type' => 'required|in:voice,text,file',
            'message' => 'required_if:type,==,text',
            'file' => new RequiredIf($request->type != 'text'),
        ];
        $validator = Validator::make($request->all(), $rules, [
            'room_id.exists' => 404,
            'to_user_id.exists' => 405,
        ]);
        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    404 => 'Failed,Room not found',
                    405 => 'Failed,User not found',
                ];
                $code = collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return response()->json(['data' => null, 'message' => $validator->errors(), 'code' => 422], 200);
        }
        $data = $request->only('room_id', 'to_user_id', 'message', 'type');

        if ($request->hasFile('file')) {
            $data['file'] = $this->uploadFiles('chat',$request->file);
        }

        $data['from_user_id'] = auth()->user()->id;

        $store = RoomMessage::create($data);
        $room = Room::find($request->room_id);
        $room->touch();
        $room = new RoomResource($room);
        $data_note = ['title'=>"تم وصل رسالة", 'body'=>($request->message) ?? "تم وصول ملف",
            'data'=>new RoomMessagesResource($store),'note_type'=>"chat",'room'=>$room];
        $this->sendChatNotification($data_note,$request->to_user_id);
        return helperJson(new RoomMessagesResource($store));
    }//end fun
}
