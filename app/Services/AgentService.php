<?php

namespace App\Services;

use App\Models\Agent;
use App\Models\User;
use App\Traits\DefaultImage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;

class AgentService
{
    use DefaultImage;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth()->user();
        $data = Agent::where(['company_id'=>$user->id,'type'=>$user->user_type])->get();
        return response()->json(['data' => $data], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store($request)
    {
        try {
            DB::beginTransaction();
            $inputs = $request->all();
            $user = Auth()->user();
            $inputs['company_id'] = $user->id;
            $inputs['user_type'] = 4;
            $inputs['password'] = Hash::make($inputs['password']);
            $user = User::create($inputs);

            if($request->image) {
                $inputs['image'] = $this->uploadFiles('agents/', $request->image);
            }
            $inputs['user_id'] = $user->id;
            $inputs['type'] = 2;
            if($user->user_type == 3){
                $inputs['type'] = 3;
            }
            $agent = Agent::create($inputs);
            DB::commit();
            return helperJson($agent, 'Agent added Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            DB::rollBack();
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $data = Agent::find($id);
            return response()->json(['data' => $data], Response::HTTP_OK);
        }catch(Exception $e){
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($request, $id)
    {
        try {
            DB::beginTransaction();
            $inputs = $request->all();
            if($request->image) {
                $inputs['image'] = $this->uploadFiles('agents/', $request->image);
            }
            if($request->password){
                $inputs['password'] = Hash::make($inputs['password']);
            }
            $agent = Agent::find($id);
            $user = User::find($agent->user_id)->update($inputs);
            $agent->update($inputs);
             DB::commit();
            return helperJson($agent, 'Agent updated Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            DB::rollBack();
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $agent = Agent::find($id);

            if(!isset($agent)){
                return helperJson(null, 'Agent Not Found',  Response::HTTP_NO_CONTENT);
            }

            if($agent->image){
                File::delete($agent->image);
            }
            User::find($agent->user_id)->delete();
            $agent->delete();
            return helperJson(null, 'Agent Deleted Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
