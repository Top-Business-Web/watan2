<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\FilesOfProjectsAndPosts;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class CompanyController extends Controller
{

//    public function index(request $request)
//    {
//        if($request->ajax()) {
//            $data = Company::latest()->get();
//            return Datatables::of($data)
//                ->addColumn('action', function ($data) {
//                    return '
//                            <button class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"
//                                    data-id="' . $data->id . '" data-title="' . $data->name . '">
//                                    <i class="fas fa-trash"></i>
//                            </button>
//                       ';
//                })
////                ->addColumn('phone', function ($data){
////                    $user = User::where('id',$data->user_id)
////                    ->get();
////                    return $user->id;
////                })
//                ->addColumn('image', function ($data){
//                    return '
//                    <img alt="" onclick="window.open(this.src)" style="cursor:pointer" class="avatar-lg bradius" src="">
//                    ';
//                })
//                ->addColumn('')
//                ->escapeColumns([])
//                ->make(true);
//        }else{
//            return view('Admin/company/index');
//        }
//    }

//    public function projectProfile($id){
//        $project = Project::findOrFail($id);
//        $attachments['images'] = FilesOfProjectsAndPosts::where('project_id',$id)->where('type','image')->get();
//        $attachments['videos'] = FilesOfProjectsAndPosts::where('project_id',$id)->where('type','video')->get();
//        $attachments['files']  = FilesOfProjectsAndPosts::where('project_id',$id)->where('type','file')->get();
//        return view('Admin/project/profile',compact('project','attachments'));
//    }
//
//    /**
//     * Show the form for creating a new resource.
//     *
//     * @return \Illuminate\Http\Response
//     */
//    public function create()
//    {
//        //
//    }
//
//    /**
//     * Store a newly created resource in storage.
//     *
//     * @param  \Illuminate\Http\Request  $request
//     * @return \Illuminate\Http\Response
//     */
//    public function store(Request $request)
//    {
//        //
//    }
//
//
//    /**
//     * Show the form for editing the specified resource.
//     *
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function edit($id)
//    {
//        //
//    }
//
//    /**
//     * Update the specified resource in storage.
//     *
//     * @param  \Illuminate\Http\Request  $request
//     * @param  int  $id
//     * @return \Illuminate\Http\Response
//     */
//    public function update(Request $request, $id)
//    {
//        //
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
}
