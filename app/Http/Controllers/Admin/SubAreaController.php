<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\SubArea;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class SubAreaController extends Controller
{

    public function index(Request $request,$id)
    {
        $area=Area::findOrFail($id);

        if($request->ajax()) {
            $data = SubArea::where('area_id',$id)->orderBy('id','DESC')->get();
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
//                ->editColumn('name_ko', function ($data) {
//                    if ($data->name_ko == null){
//                        return 'NO Data';
//                    }
//                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/subArea/index',compact('area'));
        }




    }

    public function create($id)
    {
       $area=Area::find($id);
        return view('Admin/subArea.parts.create',compact('area'));
    }


    public function store(Request $request)
    {
        $request->validate([
            'name_ar'   => 'required|max:255|unique:sub_areas,name_ar',
            'name_en'   => 'required|max:255|unique:sub_areas,name_en',
            'name_ku'   => 'required|max:255|unique:sub_areas,name_ku',
            'area_id'   => 'required|exists:areas,id'
        ],[
            'name_ar.unique'     => 'اسم الدولة العربي تم ادخاله مسبقا',
            'name_en.unique'     => 'اسم الدولة الانجليزية تم ادخاله مسبقا',
            'name_ku.unique'     => 'اسم الدولة الكردية تم ادخاله مسبقا',
            'area_id.exists'     =>'هذة المدينة غير مدرجة لدينا',
        ]);
        $data = $request->except('_token');
        if(SubArea::create($data))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $area=SubArea::find($id);
        return view('Admin/subArea.parts.edit',compact('area'));
    }



    public function update(request $request,$id)
    {
        $inputs = $request->validate([
            'name_ar'       => 'required|unique:sub_areas,name_ar,'.$id,
            'name_en'       => 'required|unique:sub_areas,name_en,'.$id,
            'name_ku'       => 'required|unique:sub_areas,name_ku,'.$id,
        ]);
        $area = SubArea::findOrFail($id);
        if ($area->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }

    public function delete(Request $request)
    {
        $row = SubArea::findOrFail($request->id);

        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }

    public function destroy($id)
    {
        //
    }
}
