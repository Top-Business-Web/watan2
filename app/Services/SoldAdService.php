<?php

namespace App\Services;

use App\Http\Resources\Home\PostResource;
use App\Models\Post;
use Symfony\Component\HttpFoundation\Response;

class SoldAdService
{
    public function list()
    {
        $user = Auth()->user();
        $data['for_sale'] = PostResource::collection(Post::where(['is_sold' => 1, 'status' => 'sale', 'user_id' => $user->id])->latest()->get());
        $data['for_rent'] = PostResource::collection(Post::where(['is_sold' => 1, 'status' => 'rent', 'user_id' => $user->id])->latest()->get());
        return response()->json(['data' => $data], 200);
    }
    public function add_to_sold_ads($id)
    {
        $ad = Post::find($id);
        $ad->update(["is_sold" => 1]);
        return helperJson($ad, 'Added Successfully',  Response::HTTP_OK);
    }
}
