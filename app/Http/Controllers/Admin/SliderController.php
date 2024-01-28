<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use App\Traits\PhotoTrait;
use Carbon\Carbon;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\View\View;
use PhpOffice\PhpSpreadsheet\Calculation\MathTrig\Sum;
use Yajra\DataTables\DataTables;

class SliderController extends Controller
{
    use PhotoTrait;

    public function index(request $request)
    {
        if ($request->ajax()) {
            $sliders = Slider::latest()->get();
            return Datatables::of($sliders)
                ->addColumn('action', function ($sliders) {
                    if ($sliders->expired_at == null) {
                        return '
                            <button type="button" data-id="' . $sliders->id . '" class="btn btn-pill btn-info-light editBtn"><i class="fa fa-edit"></i></button>';
                    } else {
                        return '
                            <button type="button" data-id="' . $sliders->id . '" class="btn btn-pill btn-info-light editBtn"><i class="fa fa-edit"></i></button>
                            <button class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $sliders->id . '" data-title="#' . $sliders->id . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                    }
                })
                ->editColumn('image', function ($sliders) {
                    return '
                    <img alt="Slider" onclick="window.open(this.src)" style="cursor:pointer" class="avatar avatar-lg bradius cover-image" src="' . $sliders->image . '">
                    ';
                })
                ->editColumn('link', function ($sliders) {
                    return '
                        <a href="' . ($sliders->link != null ? $sliders->link : '#') . '" class="btn btn-pill btn-secondary">تصفح</a>
                    ';
                })
                ->addColumn('day', function ($sliders) {
                    if ($sliders->expired_at !== null) {
                        $days = Carbon::now()->diffInDays($sliders->expired_at);
                        if ($days > 0) {
                            return 'متبقي ' . $days . ' من أيام';
                        } else {
                            return 'منتهي';
                        }
                    } else {
                        return 'بانر اساسي';
                    }
                })
                ->addColumn('show', function ($sliders) {
                    if ($sliders->status == 0)
                        $span = '<span style="cursor: pointer" data-id="' . $sliders->id . '" class="badge badge-danger statusSpan">مخفي</span';
                    else
                        $span = '<span style="cursor: pointer" data-id="' . $sliders->id . '"  class="badge badge-success statusSpan">معروض</span';

                    return $span;
                })
                ->addColumn('status', function ($sliders) {
                    if ($sliders->expired_at !== null) {
                        if (Carbon::now() < $sliders->expired_at) {

                            return '<span class="btn btn-sm btn-success">ساري</span>';
                        } else {
                            return '<span class="btn btn-sm btn-danger">منتهي</span>';
                        }
                    } else {
                        return '<span class="btn btn-sm btn-success">اساسي</span>';
                    }
                })
                ->escapeColumns([])
                ->make(true);
        } else {
            return view('Admin/sliders/index');
        }
    }

    public function SliderActivation(Request $request)
    {
        $slider = Slider::find($request->id);
        ($slider->status == '0') ? $slider->status = '1' : $slider->status = '0';
        $slider->save();
        return response()->json(
            [
                'success' => true,
                'message' => 'تم تغيير حالة المستخدم بنجاح'
            ]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Application|Factory|View
     */
    public function create()
    {
        return view('Admin/sliders.parts.create');
    }

    public function store(request $request)
    {
        $inputs = $request->validate([
            'image' => 'required|mimes:jpeg,jpg,png,gif,svg,jfif',
            'link' => 'required|url',
            'number_of_days' => 'required|numeric',
        ], [
            'link.url' => 'يرجي ادخال رابط صحيح يبدأ ب http',
            'link.required' => 'يرجي ادخال رابط ',
            'image.required' => 'يرجي ادخال الصورة',
            'image.mimes' => 'يرجي ادخال امتداد صحيح للصورة',
            'number_of_days.required' => 'يرجي ادخال عدد الايام',
            'number_of_days.numeric' => 'يرجي ادخال عدد الايام رقم',
        ]);

        $inputs['expired_at'] = Carbon::now()->addDays($request->number_of_days);

        $inputs['started_at'] = Carbon::now();


        if ($request->has('image'))
            $inputs['image'] = $this->saveImage($request->image, 'assets/uploads/sliders', 'no');

        if (Slider::create($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }

    public function edit(Slider $slider)
    {
        return view('Admin/sliders.parts.edit', compact('slider'));
    }


    public function show($id)
    {
        //
    }

    public function update(request $request, $id)
    {
        $inputs = $request->validate([
            'image' => 'nullable|mimes:jpeg,jpg,png,gif,svg',
            'link' => 'required|url',
            'number_of_days' => 'nullable|numeric',
        ], [
            'link.required' => 'يجب ادخال اللينك',
            'link.url' => 'يرجي ادخال رابط صحيح يبدأ ب http',
            'image.required' => 'يرجي ادخال الصورة',
            'image.mimes' => 'يرجي ادخال امتداد صحيح للصورة',
//            'number_of_days.required' => 'يرجي ادخال عدد الايام',
            'number_of_days.numeric' => 'يرجي ادخال عدد الايام رقم',
        ]);
        $slider = Slider::findOrFail($id);

        $inputs['started_at'] = $slider->started_at;
        if ($slider->expired_at !== null){
        $inputs['expired_at'] = Carbon::parse($slider->started_at)->addDays($request->number_of_days);
        }
        if ($request->has('image')) {
            if (file_exists($slider->image)) {
                unlink($slider->image);
            }
            $inputs['image'] = $this->saveImage($request->image, 'assets/uploads/sliders', 'no');
        }
        if ($slider->update($inputs))
            return response()->json(['status' => 200]);
        else
            return response()->json(['status' => 405]);
    }


    public function destroy($id)
    {
        //
    }

    public function delete(Request $request)
    {
        $slider = Slider::findOrFail($request->id);
        if (file_exists($slider->getAttributes()['image'])) {
            unlink($slider->getAttributes()['image']);
        }
        $slider->delete();
        return response(['message' => 'تم الحذف بنجاح', 'status' => 200], 200);
    }
}
