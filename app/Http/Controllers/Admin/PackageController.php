<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Package;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class PackageController extends Controller
{
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Package::orderBy('id','DESC')->get();
            return Datatables::of($data)

                ->addColumn('action', function ($data) {
                    return '
                            <button style="" type="button" data-id="' . $data->id . '" class="btn btn-pill btn-info-light editBtn"><i class="fa fa-edit"></i></button>
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="' . $data->type . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
                ->editColumn('created_at', function ($data){
                    return $data->created_at->diffForHumans();
                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin.package.index');
        }
    }

    public function create()
    {
        return view('Admin.package.parts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'type'   => 'required|max:255|unique:packages,type',
            'number_of_days'   => 'required|numeric',
            'price'   => 'required|numeric',
        ],[
            'type.unique'     => 'نوع الباقه ادخلت من قبل تم ادخاله مسبقا',
            'number_of_days.required'     => 'يجب ادخال عدد الايام',
            'number_of_days.numeric'     => 'يجب ان يكون عدد الايام رقما',
            'price.required'     => 'يجب ادخال السعر',
            'price.numeric'     => 'يجب ان يكون السعر رقما',
        ]);
        $data = $request->except('_token');
        if(Package::create($data))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }



    public function edit(Package $package)
    {
        return view('Admin.package.parts.edit',compact('package'));
    }


    public function update(request $request,$id)
    {
        $inputs = $request->validate([
            'type'   => 'required|max:255|unique:packages,type,'. $id,
            'number_of_days'   => 'required|numeric',
            'price'   => 'required|numeric',
        ]);
        $package = Package::findOrFail($id);
        if ($package->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function delete(Request $request)
    {
        $row = Package::findOrFail($request->id);
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
