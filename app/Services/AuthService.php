<?php

namespace App\Services;

use App\Models\FirebaseToken;
use App\Models\User;
use App\Traits\DefaultImage;
use App\Traits\GeneralTrait;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Http\Resources\{CompanyResource, UserResources};

class AuthService
{
    use DefaultImage,GeneralTrait;
    public function login($request) {
        $rules = [
            'email' => 'required',
//            'phone' => 'required_without:email',
            'password' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules, [
            'email.required' => 411,
        ]);

        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    411 => 'Failed,Required Email Or Phone',
                ];
                $code = (int)collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return helperJson(null, $validator->errors(), 422);
        }

        if ($validator->fails()) {
            return response()->json([
                'data' => null,
                'message' => $validator->errors(),
                'code' => 422,
            ], 200);
        }

        $field = filter_var($request->input('email'), FILTER_VALIDATE_EMAIL) ? 'email' : 'phone';

        if (!auth()->attempt([$field => $request->email, 'password' => $request->input('password')])) {
            return helperJson(null, 'Incorrect credentials', 406);
        }

        $user = auth()->user();

        $token = JWTAuth::fromUser($user);

        $user->token = $token;
        
        if ($user->user_type == 2 || $user->user_type == 3) {
            return helperJson(new CompanyResource($user), 'Login successfully');
        }

        return helperJson(new UserResources($user), 'Login successfully');
    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function register($request)
    {
        $rules = [
            'phone' => 'required|unique:users,phone',
            'name' => 'required|min:2|max:191',
            'email' => 'nullable|unique:users,email',
            'whatsapp' => 'required',
            'password' => 'required|min:6',
            'user_type' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules, [
            'phone.unique' => 409,
            'email.unique' => 410,
        ]);
        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    409 => 'Failed,phone number already exists',
                    410 => 'Failed,email already exists',
                ];
                $code = (int)collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return helperJson(null, $validator->errors(), 422);
        }
        $data = $request->validate($rules);

        $data['image'] = '';
        if ($request->hasFile('image')) {
            $data['image'] = $this->uploadFiles('users', $request->file('image'));
        }
//        else {
//            $data['image'] = $this->storeDefaultImage('users', $request->name);
//        }
        $data['package_expired_date'] = \Carbon\Carbon::now()->addDays(15)->format('Y-m-d');
        $data['password'] = Hash::make($data['password']);
        $user = User::create($data);


        if ($user) {
            if (!$token = JWTAuth::fromUser($user)) {
                return helperJson(null, 'there is no user', 430);
            }
        }
        $user->token = $token;
        $data = $request->all();
        if($data['user_type'] != 1){
            $user->company()->create($data);
            return helperJson(new CompanyResource($user), 'register successfully');
        }

        return helperJson(new UserResources($user), 'register successfully');
    }//end fun

     /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout($request)
    {
        $rules = [
            'token' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json(['data' => null, 'message' => $validator->errors(), 'code' => 422], 200);
        } else {

            FirebaseToken::where('token', $request->token)->delete();
            auth()->logout();
            return helperJson(null, 'log out successfully', 200);
        }
    }//end fun



    public function update_profile($request){
        $user = Auth()->user();
        $validator = Validator::make($request->all(), [
            'phone'      => 'required|unique:users,phone,'.$user->id,
            'password'   => 'nullable',
        ]);
        if ($validator->fails()) {
            $code = $this->returnCodeAccordingToInput($validator);
            return $this->returnValidationError($code, $validator,406);
        }

        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:users,email,'.$user->id,
        ]);
        if ($validator->fails()) {
            $code = $this->returnCodeAccordingToInput($validator);
            return $this->returnValidationError($code, $validator,407);
        }

        $validator = Validator::make($request->all(), [
            'image' => 'nullable|image',
        ]);
        if ($validator->fails()) {
            $code = $this->returnCodeAccordingToInput($validator);
            return $this->returnValidationError($code, $validator,400);
        }

        $data = $request->all();

        if($request->hasFile('image')){
            $data['image'] = $this->uploadFiles('users', $request->file('image'));
        }

        if($request->has('password')
            && $request->password != null){
            $data['password'] = Hash::make($request->password);
        }else{
            unset($data['password']);
        }

        if($data['user_type'] == 4) {
            $user->agent()->updateOrCreate(['user_id' => $user->id],$data);
        }
        else if($data['user_type'] != 1) {
            $company_data = $this->array_except($data, ["phone", "email", "name", "whatsapp" , "password","user_type","image"]);
            $user->company()->updateOrCreate(['user_id' => $user->id],$company_data);
        }

        $user->update($data);
        $token = JWTAuth::fromUser($user);
        $user->token = $token;
        if($user->user_type != 1){
            return helperJson(new CompanyResource($user), 'Updated successfully');
        }
        return helperJson(new UserResources($user), 'Updated successfully');

    }//end fun

    public function delete_account($request)
    {
        $user = Auth()->user();
        if(!isset($user)){
            return helperJson(null, 'This Account not found', 404);
        }
        if($user->user_type == 4) {
            $user->agent()->delete();
        }
        else if($user->user_type != 1) {
            $user->company()->delete();
        }
        User::find($user->id)->delete();
        return helperJson(null, 'Account Deleted successfully');
    }//end fun


    public function insertToken($request)
    {
        $rules = [
            'phone_token' => 'required',
            'software_type' => 'required|in:android,ios,web'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errors = collect($validator->errors())->flatten(1)[0];
            if (is_numeric($errors)) {
                $errors_arr = [
                    409 => 'Failed,phone number already exists',
                    410 => 'Failed,email already exists',
                ];
                $code = (int)collect($validator->errors())->flatten(1)[0];
                return helperJson(null, isset($errors_arr[$errors]) ? $errors_arr[$errors] : 500, $code);
            }
            return helperJson(null, $validator->errors(), 422);
        }
        $data = $request->validate($rules);

        $data['user_id'] = auth()->user()->id;

        $token = FirebaseToken::updateOrCreate($data);

        return helperJson($token, 'register successfully');
    }//end fun

    public function profile($request)
    {
        $user = auth()->user();

        $user['token'] = $request->bearerToken();
        if($user->user_type == 2 or $user->user_type == 3){
            return helperJson(new CompanyResource($user), '');
        }
        return helperJson(new UserResources($user), '');
    }

}
