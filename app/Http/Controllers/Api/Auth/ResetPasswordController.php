<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Models\ResetCodePassword;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class ResetPasswordController extends Controller
{
    public function __invoke(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'phone' => 'required|string|exists:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
        if($validator->fails()) {
            return helperJson(null, $validator->errors(), 422);
        }

        // find the code
//        $passwordReset = ResetCodePassword::firstWhere('code', $request->code);

        // check if it does not expired: the time is one hour
//        if ($passwordReset->created_at->addHour() < now()) {
//            $passwordReset->delete();
//            return helperJson(null, ['message' => trans('passwords.code_is_expire')], 422);
//        }

        // find user's email
        $user = User::firstWhere('phone', $request->phone);
        $password = Hash::make($request->password);
        // update user password
        $user->update(['password'=>$password]);

        // delete current code
//        $passwordReset->delete();

        return response(['message' =>'password has been successfully reset','code'=>200], 200);
    }
}
