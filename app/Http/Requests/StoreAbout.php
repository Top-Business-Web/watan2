<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreAbout extends FormRequest
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
            'about_us_ar'          => 'required',
            'about_us_en'          => 'required',
            'about_us_ku'          => 'required',
//            'privacy_ar'        => 'required',
//            'privacy_en'        => 'required',
//            'terms_ar'          => 'required',
//            'terms_en'          => 'required',

        ];
    }

    public function messages()
    {
        return [
            'about_us_ar.required'                 => 'يجب ادخال حقل اللغة العربية',
            'about_us_en.required'                 => 'يجب ادخال حقل اللغة الانجليزىة',
            'about_us_ku.required'                 => 'يجب ادخال حقل اللغة الكردية',
//            'privacy_ar.required'               => 'يجب ادخال هذا الحقل',
//            'privacy_en.required'               => 'يجب ادخال هذا الحقل',
//            'terms_ar.required'                 => 'يجب ادخال هذا الحقل',
//            'terms_en.required'                 => 'يجب ادخال هذا الحقل',
        ];
    }
}
