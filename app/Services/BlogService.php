<?php

namespace App\Services;

use AmrShawky\LaravelCurrency\Facade\Currency;
use App\Http\Resources\BlogResource;
use App\Http\Resources\Home\PostResource;
use App\Models\Blog;
use App\Models\Post;

class BlogService
{
    public function getAll($request){
        $currency =$request->header('currency');
        $blogs = Blog::latest()->get();
        $data = BlogResource::collection($blogs);
        return response()->json(['data' => $data], 200);
    }
}
