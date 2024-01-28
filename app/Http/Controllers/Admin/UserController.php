<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Service;
use App\Models\SubCategory;
use App\Models\User;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;




class UserController extends Controller
{
    use PhotoTrait;

//    public function index(request $request)
//    {
//        if($request->ajax()) {
//            $data = User::latest()->get();
//            return Datatables::of($data)
//                ->addColumn('action', function ($data) {
//                    return '
//                            <button style="" type="button" data-id="' . $data->id . '" class="btn btn-pill btn-info-light editBtn"><i class="fa fa-edit"></i></button>
//                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
//                                    data-id="' . $data->id . '" data-title="' . $data->name_ar . '">
//                                    <i class="fas fa-trash"></i>
//                            </button>
//                       ';
//                })
//                ->editColumn('status', function ($data) {
//                    if($data->status == 0)
//                        $span = '<span style="cursor: pointer" data-id="'.$data->id.'" class="badge badge-danger statusSpan">محظور</span';
//                    else
//                        $span = '<span style="cursor: pointer" data-id="'.$data->id.'"  class="badge badge-success statusSpan">مفعل</span';
//
//                    return $span;
//                })
//                ->editColumn('image', function ($data) {
//                    $name = $data->name;
//                    return '
//                    <img onclick="window.open(this.src)" src="'.$data->image.'" alt="profile-user" class="brround  avatar-sm w-32 ml-2"> '.$name
//                        ;
//                })
//                ->addColumn('contact', function ($data) {
//                    return '
//                    <div class="wideget-user-icons mb-4">
//                    	<a href="tel:'.$data->phone.'" class="bg-info text-white btn btn-circle"><i class="fe fe-phone"></i></a>
//						<a href="https://wa.me/'.$data->whatsapp.'" class="bg-green-dark text-white btn btn-circle"><i class="fab fa-whatsapp"></i></a>
//						<a href="mailto:'.$data->email.'" class="bg-facebook text-white btn btn-circle"><i class="fe fe-mail"></i></a>
//					</div>
//                    ';
//                })
//                ->escapeColumns([])
//                ->make(true);
//        }else{
//            return view('Admin/user/index');
//        }
//    }






    public function index(request $request)
    {
        if($request->ajax()) {
            $data = User::where('user_type' , '=' , 1)->get();
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
            return view('Admin/user/index');
        }
    }










    public function index3(request $request)
    {
        if($request->ajax()) {
            $data = User::where('user_type' , '=' , 1)->get();
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
            return view('Admin/user/index3');
        }
    }







    public function userActivation(Request $request)
    {
        $user = User::find($request->id);
        ($user->status == '0') ? $user->status = '1' : $user->status = '0';
        $user->save();
        return response()->json(
            [
                'success' => true,
                'message' => 'تم تغيير حالة المستخدم بنجاح'
            ]);
    }


    public function edit($id)
    {
        $user=User::find($id);
        return view('Admin/user.parts.edit',compact('user'));
    }



    public function update(request $request,$id)
    {

        $inputs = $request->validate([
            'image'         => 'nullable|mimes:jpeg,jpg,png,gif,svg',
            'name'   => 'required|max:255|unique:users,name,'.$id,
            'email'   => 'required|max:255|unique:users,email,'.$id,
            'phone'   => 'required|unique:users,phone,'.$id,
            'whatsapp'   => 'required|unique:users,whatsapp,'.$id,

        ]);
        $user = User::findOrFail($id);
        if($request->has('image')){
            if (file_exists($user->image)) {
                unlink($user->image);
            }
            $inputs['image'] = $this->saveImage($request->image,'assets/uploads/users','no');
        }
        if ($user->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }


    public function delete(request $request)
    {
        $user = User::findOrFail($request->id);
        if (file_exists($user->getAttributes()['image'])) {
            unlink($user->getAttributes()['image']);
        }
        $user->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
