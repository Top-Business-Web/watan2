<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Area;
use App\Models\User;
use App\Models\Report;
use App\Models\FilesOfProjectsAndPosts;
use App\Models\Post;
use App\Models\Project;
use App\Models\SubArea;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\Types\Null_;
use Yajra\DataTables\DataTables;

class PostController extends Controller
{

    public function index(request $request)
    {
        if($request->ajax()) {
            $data = Post::whereNull('company_id' )->get();

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
                ->editColumn('user_id', function ($data) {
                        return $data->user->name ?? '---';
                })
                ->editColumn('phone', function ($data) {
                    return $data->user->phone ?? '---';
                })
                ->editColumn('status_post', function ($data) {
                    return '<button class="btn btn-pill ' . ($data->status_post == 'activate' ? 'btn-success' : 'btn-danger') . '" id="updateStatus"  data-post-id="' . $data->id . '">' . ($data->status_post == 'activate' ? 'مفعل' : 'محظور') . '</button>';


                })
                ->editColumn('created_at', function ($value){
                    return $value->created_at->format('Y-m-d');
                })

                ->escapeColumns([])
                ->make(true);
        }else{
            return view('Admin/posts/index');
        }
    }



    public function show(Request $request,$id)
    {
        $post = Post::findOrFail($id);
//        $FilesOfProjectsAndPosts = FilesOfProjectsAndPosts::findOrFail($id);
        if ($request->ajax()) {
            $data = Post::where('id',$id)->get();
            return Datatables::of($data)
                ->addColumn('action', function ($data) {
                    return '
                            <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
                                    data-id="' . $data->id . '" data-description="' . $data->description . '">
                                    <i class="fas fa-trash"></i>
                            </button>
                       ';
                })
//                ->editColumn('image', function ($data) {
//                    return
//                        '
//                    <img alt="Slider" onclick="window.open(this.src)" style="cursor:pointer" class="avatar-lg bradius" src="'.$data->image.'">
//                    ';
//                })
                ->escapeColumns([])
                ->make(true);
        } else {
            return view('Admin/posts/show', compact('post' ));
//            return view('Admin/posts/show', compact('post' ,'FilesOfProjectsAndPosts'));
        }

    }

    public function details($post_id)
    {
        $post = Post::findOrFail($post_id);

        return view('Admin/posts/details', compact('post' ));
    }

    public function delete(Request $request)

    {
        $row = Post::findOrFail($request->id);
        $row->delete();
        return response(['message'=>'تم الحذف بنجاح','status'=>200],200);
    }

    public function updateStatus(Request $request) {
        $postId = $request->input('postId');

        // Fetch the post based on the $postId and update its status
        $post = Post::find($postId);

        if (!$post) {
            return response()->json(['status' => 404], 404); // Return 404 if post is not found
        }

        if ($post->status_post === 'activate') {
            $post->status_post = 'pending';
        } else {
            $post->status_post = 'activate';
        }

        $post->save();

        // Return the updated post status
        return response()->json(['status' => 200, 'status_post' => $post->status_post]);
    }

}
