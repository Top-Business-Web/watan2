<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Agent;
use App\Models\Area;
use App\Models\Blog;
use App\Models\Company;
use App\Models\FilesOfProjectsAndPosts;
use App\Models\Post;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\Types\Null_;
use Yajra\DataTables\DataTables;

class Post_2Controller extends Controller
{
    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Post::whereNotNull('company_id' )->get();
            return Datatables::of($data)
                ->addColumn('action', function ($data) {
                    return '
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-title="' . $data->title_ar . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
                ->addColumn('details', function ($data) {
                    return '
                           <a class="btn btn-pill btn-success"  href="'.url("admin/post-details/$data->id").'" target="_blank">  <i class="fas fa-eye"></i></a>
                       ';
                })
                ->editColumn('user_id', function ($data){
                    return $data->user->name ;
                })
//                ->editColumn('user_id', function ($xx){
//                    return $xx->company->about_ar;
//                })
                ->editColumn('created_at', function ($date){
                    return $date->created_at->format('Y-m-d');
                })

                //$post->company->about_ar
                ->escapeColumns([])
                ->make(true);
        }else{

            return view('Admin/posts2/index' );
        }
    }


    function delete(Request $request)
    {
        $row = Post::findorfail($request->id);
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);

    }




 //   public function delete(Request $request)
//    {
//        $row = Post::findOrFail($request->id);
//        $row->delete();
//        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
//    }
}
