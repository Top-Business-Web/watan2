<?php

namespace App\Services;

use App\Http\Resources\Favourites\PostFavouriteResource;
use App\Http\Resources\Favourites\ProjectFavouriteResource;
use App\Models\PostFavourite;
use App\Models\ProjectFavourite;
use Symfony\Component\HttpFoundation\Response;

class FavouriteService
{
    public function make_post_favourite($request)
    {
        try {
            $inputs = $request->all();
            $user = Auth()->user();
            $inputs['user_id'] = $user->id;
            $is_favourite = PostFavourite::where(['user_id' => $user->id,'post_id' => $inputs['post_id']]);
            if($is_favourite->count()){
                $is_favourite->first()->delete();
                return helperJson(null, 'Success remove from favorite',  Response::HTTP_OK);
            }else {
                $favourite = PostFavourite::create($inputs);
                return helperJson($favourite, 'Success add to favorite',  Response::HTTP_OK);
            }
        }catch(Exception $e){
            return helperJson(null, 'Sent Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
    public function make_project_favourite($request)
    {
        try {
            $inputs = $request->all();
            $user = Auth()->user();
            $inputs['user_id'] = $user->id;
            $is_favourite = ProjectFavourite::where(['user_id' => $user->id,'project_id' => $inputs['project_id']]);
            if($is_favourite->count()){
                $is_favourite->first()->delete();
                return helperJson(null, 'Success remove from favorite',  Response::HTTP_OK);
            }else {
                $favourite = ProjectFavourite::create($inputs);
                return helperJson($favourite, 'Success add to favorite',  Response::HTTP_OK);
            }
        }catch(Exception $e){
            return helperJson(null, 'Sent Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function get_favourites()
    {
        try {
            $user = Auth()->user();
            session(['user_id'=>$user->id]);
            $data['posts_favourites'] = PostFavouriteResource::collection(PostFavourite::with('post_data')->where(['user_id' => $user->id])->get());
            $data['projects_favourites']  = ProjectFavouriteResource::collection(ProjectFavourite::with('project_data')->where(['user_id' => $user->id])->get());
            return helperJson($data, '',  Response::HTTP_OK);
        }catch(Exception $e){
            return helperJson(null, 'Sent Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
