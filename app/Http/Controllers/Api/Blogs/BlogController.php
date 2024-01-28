<?php

namespace App\Http\Controllers\Api\Blogs;

use App\Http\Controllers\Controller;
use App\Services\BlogService;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    private $blog;

    /**
     * @param $blog
     */
    public function __construct(BlogService $blog)
    {
        $this->blog = $blog;
    }

    // get all blogs list Latest
    public function index(Request $request)
    {
        return $this->blog->getAll($request);
    }
}
