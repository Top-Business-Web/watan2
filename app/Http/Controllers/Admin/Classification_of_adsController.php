<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Classification_of_ads;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables;

class Classification_of_adsController extends Controller
{
    use PhotoTrait;
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Classification_of_ads::orderBy('id','DESC')->get();
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

                ->editColumn('image', function ($data) {
                    return '
                    <img alt="" onclick="window.open(this.src)" style="cursor:pointer" class="avatar-lg bradius" src="'.$data->image.'">
                    ';
                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/classification_of_ads/index');
        }
    }


    public function create()
    {
        return view('Admin/classification_of_ads.parts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_ar'   => 'required|max:255|unique:classification_of_ads,name_ar',
            'name_en'   => 'required|max:255|unique:classification_of_ads,name_en',
            'name_ko'   => 'required|max:255|unique:classification_of_ads,name_ko',
            'image'      => 'required|max:255|image',
        ],[
            'name_ar.unique'     => 'اسم الدولة العربي تم ادخاله مسبقا',
            'name_en.unique'     => 'اسم الدولة الانجليزية تم ادخاله مسبقا',
            'name_ko.unique'     => 'اسم الدولة الكرديه تم ادخاله مسبقا',
            'image.required'     => 'يرجي رفع صورة لعلم الدولة',
        ]);

        $inputs = $request->all();
        if($request->has('image')){
            $inputs['image'] = $this->saveImage($request->image,'/classification_of_ads');


//            c['image'] = $this->saveImage($request->image,'assets/uploads/classification_of_ads');
        }



        if(classification_of_ads::create($inputs))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }




    public function edit($id)
    {
        $classification_of_ads=Classification_of_ads::find($id);
        return view('Admin/classification_of_ads/parts/edit',compact('classification_of_ads'));
    }


    public function update(Request $request , $id)
    {

        $request->validate([
            'name_ar'   => 'nullable|max:255',
            'name_en'   => 'nullable|max:255',
            'name_ko'   => 'nullable|max:255',
            'image'      => 'nullable|max:255|image',
        ],[
            'name_ar.unique'     => 'اسم الدولة العربي تم ادخاله مسبقا',
            'name_en.unique'     => 'اسم الدولة الانجليزية تم ادخاله مسبقا',
            'name_ko.unique'     => 'اسم الدولة الكرديه تم ادخاله مسبقا',
            'image.required'     => 'يرجي رفع صورة لعلم الدولة',
        ]);

        $inputs = $request->except('id');

        $project = Classification_of_ads::findOrFail($id);

        if ($request->has('image')) {
            if (file_exists($project->image)) {
                unlink($project->image);
            }
            $inputs['image'] = $this->saveImage($request->image, 'assets/uploads/classification_of_ads');
        }

        if ($project->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }



    public function delete(Request $request)
    {
        $row = Classification_of_ads::findOrFail($request->id);
        if (file_exists($row->getAttributes()['image'])) {
            unlink($row->getAttributes()['image']);
        }
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
