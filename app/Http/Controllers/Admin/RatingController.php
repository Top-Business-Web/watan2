<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Classification_of_ads;
use App\Models\Rating;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables;

class RatingController extends Controller
{
    use PhotoTrait;
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Rating::orderBy('id','DESC')->get();
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
                    <img alt="" onclick="window.open(this.src)" style="cursor:pointer" class="avatar-lg bradius" src="'.asset($data->image).'">
                    ';
                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/rating/index');
        }
    }


    public function create()
    {
        return view('Admin.rating.parts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_ar'   => 'max:255',
            'name_en'   => 'max:255',
            'name_ko'   => 'max:255',
            'image'      => 'max:255|image',
        ],[
            'name_ar.unique'     => 'اسم الدولة العربي تم ادخاله مسبقا',
            'name_en.unique'     => 'اسم الدولة الانجليزية تم ادخاله مسبقا',
            'name_ko.unique'     => 'اسم الدولة الكرديه تم ادخاله مسبقا',
            'image.required'     => 'يرجي رفع صورة لعلم الدولة',
        ]);

        $inputs = $request->all();
        if($request->has('image')){
            $inputs['image'] = $this->saveImage($request->image,'public/assets/uploads/rating');
        }

        if(Rating::create($inputs))
            return response()->json(['status'=>200]);
        else
            return response()->json(['status'=>405]);
    }




    public function edit($id)
    {
        $rating=Rating::find($id);
        return view('Admin/rating/parts/edit',compact('rating'));
    }


    public function update(request $request , $id)
    {

        $request->validate([
            'name_ar'   => 'max:255',
            'name_en'   => 'max:255',
            'name_ko'   => 'max:255',
            'image'      => 'max:255|image',
        ],[
            'name_ar.unique'     => 'اسم الدولة العربي تم ادخاله مسبقا',
            'name_en.unique'     => 'اسم الدولة الانجليزية تم ادخاله مسبقا',
            'name_ko.unique'     => 'اسم الدولة الكرديه تم ادخاله مسبقا',
            'image.required'     => 'يرجي رفع صورة لعلم الدولة',
        ]);


        $inputs = $request->except('id');

        $project = Rating::findOrFail($id);

        if ($request->has('image')) {
            if (file_exists($project->image)) {
                unlink($project->image);
            }
            $inputs['image'] = $this->saveImage($request->image, 'assets/uploads/rating');
        }

        if ($project->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }



    public function delete(Request $request)
    {
        $row = Rating::findOrFail($request->id);
        if (file_exists($row->getAttributes()['image'])) {
            unlink($row->getAttributes()['image']);
        }
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
