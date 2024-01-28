<?php

namespace App\Http\Controllers\Api\Home;

use App\Http\Controllers\Controller;
use App\Http\Resources\Home\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    /*
     *  ===================== index =======================================
     */
    public function index()
    {
        $data = CategoryResource::collection(Category::latest()->get());
        return response()->json(['data' => $data], 200);
    }
}
