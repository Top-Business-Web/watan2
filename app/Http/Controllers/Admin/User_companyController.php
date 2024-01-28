<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class User_companyController extends Controller
{
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = User::where('user_type' , '=' , 2)->get();
            return Datatables::of($data)
                ->addColumn('action', function ($data) {
                    return '
                            <button style="" type="button" data-id="' . $data->id . '" class="btn btn-pill btn-info-light editBtn"><i class="fa fa-edit"></i></button>
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="' . $data->name_ar . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
                ->addColumn('agents', function ($data) {
                    return '
                    	<a href="'.url("admin/company_agents/$data->id").'" class="bg-green-dark text-white btn btn-circle"><i class="fab fa-users"></i></a>
                       ';
                })
                ->editColumn('status', function ($data) {
                    if($data->status == 0)
                        $span = '<span style="cursor: pointer" data-id="'.$data->id.'" class="badge badge-danger statusSpan">محظور</span';
                    else
                        $span = '<span style="cursor: pointer" data-id="'.$data->id.'"  class="badge badge-success statusSpan">مفعل</span';

                    return $span;
                })
                ->editColumn('image', function ($data) {
                    $name = $data->name;
                    return '
                    <img onclick="window.open(this.src)" src="'.$data->image.'" alt="profile-user" class="brround  avatar-sm w-32 ml-2"> '.$name
                        ;
                })
                ->addColumn('contact', function ($data) {
                    return '
                    <div class="wideget-user-icons mb-4">
                    	<a href="tel:'.$data->phone.'" class="bg-info text-white btn btn-circle"><i class="fe fe-phone"></i></a>
						<a href="https://wa.me/'.$data->whatsapp.'" class="bg-green-dark text-white btn btn-circle"><i class="fab fa-whatsapp"></i></a>
						<a href="mailto:'.$data->email.'" class="bg-facebook text-white btn btn-circle"><i class="fe fe-mail"></i></a>
					</div>
                    ';
                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/user/index2');
        }
    }






}
