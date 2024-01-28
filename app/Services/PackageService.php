<?php

namespace App\Services;

use App\Models\Package;
use App\Models\PackageUser;
use App\Models\PendingPackage;
use App\Models\User;
use App\Traits\GeneralTrait;
use App\ZainPay\ZainCash;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PackageService
{
    use GeneralTrait;
    public function list()
    {
        $packages = Package::latest()->get();
        return response()->json(['data' => $packages], 200);
    }


    public function store($request)
    {
        try {
            DB::beginTransaction();
            $validator = Validator::make($request->all(), [
                'user_id' => 'required|numeric|exists:users,id', // required
                'package_id' => 'required|numeric|exists:packages,id',
            ], [
                'user_id.exists' => '404',
                'package_id.exists' => '403',
            ]);


            if ($validator->fails()) {
                $errors = collect($validator->errors())->flatten(1)[0];
                if (is_numeric($errors)) {
                    $errors_arr = [
                        '404' => 'failed,User Not Found',
                        '403' => 'failed,Package Not Found',
                    ];
                    $code = collect($validator->errors())->flatten(1)[0];
//                    return $this->final_response(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 404, $code, 'no');
                    return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 404, $code, '404');
                }
//                return $this->final_response(collect($validator->errors())->flatten(1), 'failed', 422, 'yes');
                return helperJson(collect($validator->errors())->flatten(1), 'failed', 422, '422');
            }
            $package = Package::find($request->package_id);
            $user = User::find($request->user_id);


            if($package->price<250 && $request->payment_type =='zain_cash'){
                return helperJson(null,'يجب ان تكون القيمة اكبر من 250 ', 422);
            }


            $url = $this->pay($package->price,'js',$request->user_id,$request->package_id);
            return response()->json(['data'=>$url,'status'=>200,'message'=>'success']);

//            return helperJson($package_user, 'Agent added Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            DB::rollback();
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    // ===============================================================================

    public function update_package(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|numeric|exists:users,id', // required
            'package_id' => 'required|numeric|exists:packages,id',
        ], [
            'user_id.exists' => '404',
            'package_id.exists' => '403',
        ]);


        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    '404' => 'failed,User Not Found',
                    '403' => 'failed,Package Not Found',
                ];
                $code = collect($validator->errors())->flatten(1)[0];
                return $this->final_response(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 404, $code, 'no');
            }
            return $this->final_response(collect($validator->errors())->flatten(1), 'failed', 422, 'yes');
        }
        $package = Package::find($request->package_id);
        $user = User::find($request->user_id);


        if($package->cost<250 && $request->payment_type !='cash_payment'){
            return $this->final_response('يجب ان تكون القيمة اكبر من 250 ', 'failed', 422, 'yes');
        }

        if($request->payment_type=='cash'){

            $user = User::find($request->user_id);
            $package = Package::find($package->id);

            if($user->balance<$package->cost){
                return $this->final_response('عفوا ليس لديك رصيد كافي', 'failed', 422, 'yes');
            }

            else {
                $user->balance=$user->balance-$package->cost;
            }




            $toDay = $user->package_expired_date;

            if(!$toDay || $toDay <= Carbon::now()->toDateString())
                $toDay = date('Y-m-d');

            $expired_date = Carbon::parse($toDay)->addDays($package->number_of_days)->toDateString();

            $user->package_expired_date = $expired_date;
            $user->save();
            return response()->json(['data'=>null,'status'=>200,'message'=>'تمت العملية بنجاح']);
        }

        elseif($request->payment_type=='cash_payment'){


            $user = User::find($user->id);
            $package = Package::find($request->package_id);
            PendingPackage::create([
                'user_id' => $user->id,
                'package_id' => $package->id,
                'name' => $user->name,
                'status' => 0,
            ]);
            return response()->json(['data'=>null,'status'=>200,'message'=>'تم ارسال الطلب للادارة']);
        }

        $url = $this->pay($package->cost,'js',$request->user_id,$request->package_id);
        return response()->json(['data'=>$url,'status'=>200,'message'=>'success']);
    }//end fun
    /**
     * @param $total
     * @param $id
     * @param $type
     * @return void
     */
    public function pay($total,$type = 'php',$user_id,$package_id){
        try {
            $zc = new ZainCash([
                'msisdn' => $_ENV['ZC_MSISDN'],
                'secret' => $_ENV['ZC_SECRET'],
                'merchantid'=> $_ENV['ZC_MERCHANTID'],
                'production_cred'=> ( $_ENV['ZC_ENV_PRODUCTION'] === 'true' ),
                'language'=>'en', // 'en' or 'ar'
                'redirection_url'=>url("api/packages/endUpdatePackage/{$user_id}/{$package_id}")

            ]);
            return $zc->charge($total,'Product purchase or something',$user_id,$type);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }//end fun
    /**
     * @param Request $request
     * @return void
     */
    public function endUpdatePackage($user_id,$package_id,Request $request){
        $user = User::find($user_id);
        $package = Package::find($package_id);

        $toDay = $user->package_expired_date;

        if(!$toDay || $toDay <= Carbon::now()->toDateString())
            $toDay = date('Y-m-d');

        $expired_date = Carbon::parse($toDay)->addDays($package->number_of_days)->toDateString();
        try {
            if (isset($request->token)){

                $zc = new ZainCash([
                    'msisdn' => $_ENV['ZC_MSISDN'],
                    'secret' => $_ENV['ZC_SECRET'],
                    'merchantid'=> $_ENV['ZC_MERCHANTID'],
                    'production_cred'=> ( $_ENV['ZC_ENV_PRODUCTION'] === 'true' ),
                    'language'=>'en', // 'en' or 'ar'
                    'redirection_url'=>url("api/packages/endUpdatePackage/{$user_id}/{$package_id}")

                ]);
                $result = $zc->decode($request->token);

                if ($result['status']=='success'){
                    $user->package_expired_date = $expired_date;
                    $inputs = $request->all();
                    $inputs['user_id'] = $user->id;
                    $package_user = PackageUser::create($inputs);
                    $package = Package::find($inputs['package_id']);
                    $user->packages_balance = $user->packages_balance + $package->number_of_days;
                    $user->save();

                    return redirect(url('/api/endCheckOut').'?status=yes');
                    // do something (ex: show sucess message)
                }
                else{

                    return redirect(url('/api/endCheckOut').'?status=no');
//                    // do something (ex: show errors)
                }
            }else{

                return redirect(url('/api/endCheckOut').'?status=no');
//                    // do something (ex: show errors)
            }
        } catch (Exception $e) {
            return redirect(url('/api/endCheckOut').'?status=no');
        }

    }//end fun



}
