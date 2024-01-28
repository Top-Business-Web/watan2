<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class AreaController extends Controller
{
    use PhotoTrait;
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Area::orderBy('id','DESC')->get();
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
                ->addColumn('subArea', function ($data) {
                    $link = route('subArea',$data->id);
                    return '<a class="btn btn-pill btn-success" href="'.$link.'">معاينة <i class="fa fa-map text-white"></i> </a>';
                })
                ->editColumn('image', function ($data) {
                    return '
                    <img alt="Slider" onclick="window.open(this.src)" style="cursor:pointer" class="avatar-lg bradius" src="'.$data->image.'">
                    ';
                })
//                ->editColumn('name_ku', function ($data) {
//                    if ($data->name_ku == null){
//                        return 'NO Data';
//                    }
//                })
                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/area/index');
        }
    }

    public function create()
    {
        return view('Admin/area.parts.create');
    }

    public function store(Request $request)
    {
        // Validate the request data
        $request->validate([
            'name_ar' => 'required|max:255|unique:areas,name_ar',
            'name_en' => 'required|max:255|unique:areas,name_en',
            'name_ku' => 'required|max:255|unique:areas,name_ku',
            'image'   => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust the allowed image types and size as needed
        ], [
            'name_ar.required' => 'اسم الدولة العربي مطلوب',
            'name_en.required' => 'اسم الدولة الإنجليزي مطلوب',
            'name_ku.required' => 'اسم الدولة الكردية مطلوب',
            'image.image'      => 'يجب رفع صورة صحيحة',
            'image.mimes'      => 'يجب أن تكون الصورة من نوع jpeg، png، jpg أو gif',
            'image.max'        => 'حجم الصورة يجب أن يكون أقل من 2 ميجابايت',
        ]);

        $data = $request->except('_token', 'image');

        // Handle image upload
        if ($request->hasFile('image')) {
            $data['image'] = $this->saveImage($request->file('image'), 'assets/uploads/area');
        }

        // Attempt to create a new Area record
        if (Area::create($data)) {
            return response()->json(['status' => 200]);
        } else {
            return response()->json(['status' => 405]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }


    public function edit(Area $area)
    {
        return view('Admin/area.parts.edit',compact('area'));
    }


    public function update(request $request,$id)
    {
        $inputs = $request->validate([
            'image'         => 'nullable|mimes:jpeg,jpg,png,gif,svg',
            'name_ar'       => 'required|unique:areas,name_ar,'.$id,
            'name_en'       => 'required|unique:areas,name_en,'.$id,
            'name_ku'       => 'required|unique:areas,name_ku,'.$id
        ]);
        $area = Area::findOrFail($id);
        if($request->has('image')){
            if (file_exists($area->image)) {
                unlink($area->image);
            }
            $inputs['image'] = $this->saveImage($request->image,'assets/uploads/area');
        }
        if ($area->update($inputs))
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
        $row = Area::findOrFail($request->id);
        if (file_exists($row->getAttributes()['image'])) {
            unlink($row->getAttributes()['image']);
        }
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }
}
