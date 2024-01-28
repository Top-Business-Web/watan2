<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\FirebaseToken;
use App\Models\Notification;
use App\Traits\FirebaseNotification;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class NotificationController extends Controller
{
    use PhotoTrait, FirebaseNotification;
    public function index(request $request)
    {

        if($request->ajax()) {
            $data = Notification::orderBy('id','DESC')->get();
            return Datatables::of($data)
                ->addColumn('action', function ($data) {
                    return '
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="' . $data->title . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })

                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/notifications/index');
        }
    }

    public function create (){
        return view('Admin/notifications/parts/create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title'   => 'required|max:255',
            'body'   => 'required',
        ],[
            'title.required'     => 'عنوان الاشعار مطلوب',
        ]);
        $data = $request->except('_token');
        $usersIds = FirebaseToken::pluck('user_id')->toArray();

        if(empty($usersIds)){
            return response()->json(['mymessage'=>'لم يتم ارسال الاشعار لعدم وجود مستخدمين','status'=>405]);
        }
        if($this->sendBasicNotification([],$data))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }


    public function delete(Request $request)
    {
        $row = Notification::findOrFail($request->id);
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
