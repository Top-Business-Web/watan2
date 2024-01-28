<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreTerms extends FormRequest
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

            'terms_ar'          => 'required',
            'terms_en'          => 'required',
            'terms_ku'          => 'required',

        ];
    }

    public function messages()
    {
        return [
            'terms_ar.required'                 =>  'يجب ادخال حقل اللغة العربية',
            'terms_en.required'                 => 'يجب ادخال حقل اللغة الانجليزىة',
            'terms_ku.required'                 => 'يجب ادخال حقل اللغة الكردية',
        ];
    }
}
