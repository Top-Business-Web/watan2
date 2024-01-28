<?php

namespace App\Http\Controllers\Api\Home;

use App\Http\Controllers\Controller;
use App\Http\Resources\Home\PostResource;
use App\Models\Post;
use App\Services\PostService;
use Illuminate\Http\Request;

class PostApiController extends Controller
{
    private $post;


    //
    /*
     *  ===================== get all posts with images in home =======================================
     */
    /**
     * @param $post
     */
    public function __construct(PostService $post)
    {
        $this->post = $post;
    }
    public function index(Request $request)
    {
        return $this->post->getAll($request);
    }

    public function home(Request $request)
    {
        return $this->post->getHome($request);
    }

    public function clients_ads(Request $request)
    {
        return $this->post->clientAds($request);
    }

    public function companies_ads(Request $request)
    {
        return $this->post->companiesAds($request);
    }


    public function ad_details(Request $request,$id)
    {
        return $this->post->getAdDetails($request,$id);
    }

    public function filter(Request $request)
    {
        return $this->post->filter($request);
    }

    public function ads_by_user($user_id)
    {
        return $this->post->ads_by_user($user_id);
    }
}
