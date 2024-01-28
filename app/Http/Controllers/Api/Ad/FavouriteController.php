<?php

namespace App\Http\Controllers\Api\Ad;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostFavouriteRequest;
use App\Http\Requests\ProjectFavouriteRequest;
use App\Services\FavouriteService;
use Illuminate\Http\Request;

class FavouriteController extends Controller
{
    private $favourite;

    /**
     * @param FavouriteService $favourite
     */
    public function __construct(FavouriteService $favourite)
    {
        $this->favourite = $favourite;
    }

    // Make Post Favourite
    public function post_favourite(PostFavouriteRequest $request)
    {
        return $this->favourite->make_post_favourite($request);
    }

    // Make Project Favourite
    public function project_favourite(ProjectFavouriteRequest $request)
    {
        return $this->favourite->make_project_favourite($request);
    }

    public function get_favourites()
    {
        return $this->favourite->get_favourites();
    }
}
