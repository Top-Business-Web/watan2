<?php

namespace App\Http\Requests;

use App\Models\Agent;
use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class AgentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $user = User::find($this->id);

        switch($this->method())
        {
            case 'GET':

            case 'DELETE':
                    {
                        return [];
                    }
                    break;
            case 'POST':
            {
                return [
                    'about' => 'nullable',
                    'phone' => 'required|unique:users|max:255',
                    'email' => 'required|unique:users|max:255',
                    'password' => 'required|min:6',
                ];
                break;
            }
            case 'PUT':
            {
                $user_id = Agent::find($this->segment(4))->user_id;
                return [
                    'about' => 'nullable',
                    'phone' => 'required|unique:users,phone,' . $user_id,
                    'email' => 'required|unique:users,email,' . $user_id,
                    'password' => 'nullable|min:6',
                ];
                break;
            }
            case 'PATCH':
            default:break;
        }
    }

    protected function failedValidation(\Illuminate\Contracts\Validation\Validator $validator)
    {
        $response = new JsonResponse(['data' => null,

                'message' => $validator->errors(),
                'code' => 422
            ], 200);

        throw new \Illuminate\Validation\ValidationException($validator, $response);
    }
}
