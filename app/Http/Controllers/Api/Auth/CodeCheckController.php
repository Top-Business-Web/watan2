<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Models\ResetCodePassword;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CodeCheckController extends Controller
{
    public function __invoke(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'code' => 'required|string|exists:reset_code_passwords',
        ]);
        if($validator->fails()) {
            return helperJson(null, $validator->errors(), 422);
        }

        // find the code
        $passwordReset = ResetCodePassword::firstWhere('code', $request->code);

        // check if it does not expired: the time is one hour
        if ($passwordReset->created_at > now()->addHour()) {
            $passwordReset->delete();
            return response(['message' => trans('passwords.code_is_expire'),'code'=>422], 200);
        }

        return response([
            'validation_code' => $passwordReset->code,
            'message' => trans('passwords.code_is_valid'),
            'code' => 200
        ], 200);
    }

    public function check_phone(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'phone' => 'required|string|exists:users',
        ]);
        if($validator->fails()) {
            return helperJson(null, $validator->errors(), 422);
        }
        return response([
            'message' => 'Phone is exists',
            'code' => 200
        ], 200);
    }
}
