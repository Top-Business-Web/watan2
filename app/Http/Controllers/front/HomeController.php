<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use App\Models\ContactUs;


class HomeController extends Controller
{
    public function index()
    {
        $setting = Setting::first();
        return view('front.home.home',compact('setting'));
    }

    public function contact(Request $request)
    {
        $request->validate([
            'name'   => 'required|max:255',
            'email'   => 'required|max:500|email',
            'subject'   => 'required|max:500',
            'message'   => 'required',
        ],[
            'name.required' => 'الاسم مطلوب',
            'email.required' => 'الايميل مطلوب',
            'email.email' => 'الايميل خطا',
            'subject.required' => 'موضوع الرسالة مطلوب',
            'message.required' => 'الرسالة مطلوبة',
        ]);

        $inputs = $request->all();

        if(ContactUs::create($inputs))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }
}
