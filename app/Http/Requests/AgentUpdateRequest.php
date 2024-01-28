<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class AgentUpdateRequest extends FormRequest
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
        return [
            'about' => 'nullable',
            'phone' => 'required|unique:users,phone,' . $this->segment(4),
            'email' => 'required|unique:users,email,' . $this->segment(4),
            'password' => 'nullable|min:6',
        ];
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
