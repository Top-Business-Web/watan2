<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreSocial extends FormRequest
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
            'facebook'          => 'nullable|url',
            'insta'          => 'nullable|url',
            'twitter'          => 'nullable|url',
            'snap_chat'          => 'nullable|url',
            'whatsapp'          => 'nullable|numeric',
        ];
    }

    public function messages()
    {
        return [
            'whatsapp.numeric' => 'يجب ان يكون الواتساب رقما',
            'facebook.url' => 'يجب ان يكون الفيسبوك رابط',
            'insta.url' => 'يجب ان يكون الانستا رابط',
            'twitter.url' => 'يجب ان يكون تويتر رابط',
            'snap_chat.url' => 'يجب ان يكون سناب شات رابط',
        ];
    }
}
