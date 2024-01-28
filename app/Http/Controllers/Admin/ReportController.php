<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\Blog;
use App\Models\User;
use App\Models\FilesOfProjectsAndPosts;
use App\Models\Post;
use App\Models\Report;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\Types\Null_;
use Yajra\DataTables\DataTables;

class ReportController extends Controller
{


    public function index(request $request)
    {
        if ($request->ajax()) {
            $data = Report::latest()->get();
            return Datatables::of($data)
                ->addColumn('action', function ($data) {
                    return '
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="' . $data->user_id  . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
                ->editColumn('user_id', function ($data){
                    if ($data->user_id == null){
                        return $data->project->name;
                    }else{
                        return $data->user->name;
                    }
                })
                ->addColumn('details', function ($data){
                    if ($data->project_id == null){
                    $link = route('post/show',$data->post_id);
                    return '
                    <a class="btn btn-pill btn-success" href="' . $link . '">التفاصيل <i class="fa fa-map text-white"></i> </a>
                    ';
                    }
                    else{
                        $link = route('project/show2', $data->project_id);
                        return '
                    <a class="btn btn-pill btn-success" href="' . $link . '">التفاصيل <i class="fa fa-map text-white"></i> </a>
                    ';
                    }
                })
                ->escapeColumns([])
                ->make(true);
        } else {
            return view('Admin/report/index');
        }




    }

    public function delete(Request $request)

    {
        $row = Report::findOrFail($request->id);
        $row->delete();
        return response(['message' => 'تم الحذف بنجاح', 'status' => 200], 200);
    }





//->addColumn('xx', function ($post) {
//    $link = route('post/show',$post->post_id );
//    return '<a class="btn btn-pill btn-success" href="'.$link.'">معاينة <i class="fa fa-map text-white"></i> </a>';
//})
//                ->addColumn('xx', function ($xx) {
//                    if ($xx->project_id == null){
//                        $link = route('post/show',$xx->post_id);
//                    }else{
//                        $link = route('project/show2',$xx->project_id);

//                    }
//                    return '<a class="btn btn-pill btn-success" href="'.'">معاينة <i class="fa fa-map text-white"></i> </a>';
//                })





//->addColumn('Post', function ($data) {
//    if ($data->project_id == null){
//        $link = route('post/show',$data->id);
//    }else{
//        $link = route('project/show2',$data->id);
//
//    }
//    return '<a class="btn btn-pill btn-success" href="'.$link.'">معاينة <i class="fa fa-map text-white"></i> </a>';
//})


//    public function show(Request $request,$id)
//    {
//        $post = Post::findOrFail($id);
//
//        if ($request->ajax()) {
//            $data = Post::where('id',$id)->get();
//            return Datatables::of($data)
//                ->addColumn('action', function ($data) {
//                    return '
//                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
//                                    data-id="' . $data->id . '" data-title="' . $data->title_ar . '">
//                                    <i class="fas fa-trash"></i>
//                            </button>
//                       ';
//                })
//                ->escapeColumns([])
//                ->make(true);
//        } else {
//            return view('Admin/posts/show', compact('post'));
//        }

//    }

}
