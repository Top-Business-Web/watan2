<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PackageUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class PackageUserController extends Controller
{
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = PackageUser::orderBy('id','DESC')->get();
            return Datatables::of($data)

                ->addColumn('action', function ($data) {
                    return '
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
                ->editColumn('created_at', function ($data){
                    return $data->created_at->diffForHumans();
                })
                ->addColumn('package_id', function ($data){
                    return $data->package->type;
                })
                ->addColumn('package_days', function ($data){
                    return $data->package->number_of_days;
                })
                ->addColumn('package_value', function ($data){
                    return $data->package->price;
                })
                ->editColumn('user_id',function ($data){
                    return $data->user->name;
                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin.package_user.index');
        }
    }

//    public function create()
//    {
//        return view('Admin.package_user.parts.create');
//    }
//
//    public function store(Request $request)
//    {
//        $request->validate([
//            'type'   => 'required|max:255|unique:packages,type',
//            'number_of_days'   => 'required|numeric',
//            'value'   => 'required|numeric',
//        ],[
//            'type.unique'     => 'نوع الباقه ادخلت من قبل تم ادخاله مسبقا',
//            'number_of_days.required'     => 'يجب ادخال عدد الايام',
//            'number_of_days.numeric'     => 'يجب ان يكون عدد الايام رقما',
//            'value.required'     => 'يجب ادخال السعر',
//            'value.numeric'     => 'يجب ان يكون السعر رقما',
//        ]);
//        $data = $request->except('_token');
//        if(PackageUser::create($data))
//            return response()->json(['status'=>200]);
//        else
//            return response()->json(['status'=>405]);
//    }
//
//
//
//    public function edit(PackageUser $package)
//    {
//        return view('Admin/category.parts.edit',compact('package'));
//    }
//
//
//    public function update(request $request,$id)
//    {
//        $inputs = $request->validate([
//            'type'   => 'required|max:255|unique:packages,type'.$id,
//            'number_of_days'   => 'required|numeric'.$id,
//            'value'   => 'required|numeric'.$id,
//        ]);
//        $package = PackageUser::findOrFail($id);
//        if ($package->update($inputs))
//            return response()->json(['status' => 200]);
//        else
//            return response()->json(['status' => 405]);
//    }
//
//    /**
//     * Remove the specified resource from storage.
//     *
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function destroy($id)
//    {
//        //
//    }

    public function delete(Request $request)
    {
        $row = PackageUser::findOrFail($request->id);
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
