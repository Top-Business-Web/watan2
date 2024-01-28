<?php

namespace App\Services;

use AmrShawky\LaravelCurrency\Facade\Currency;
use App\Http\Resources\Home\PostResource;
use App\Http\Resources\Home\ProjectResource;
use App\Models\Post;
use App\Models\Project;
use App\Traits\DefaultImage;
use Illuminate\Support\Facades\Auth;
use JWTAuth;
use Symfony\Component\HttpFoundation\Response;

class PostService
{


    public function getHome($request){
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);

        $data['new'] = PostResource::collection(Post::orderBy('id', 'desc')->take(2)->get());
        $data['popular'] = PostResource::collection(Post::orderBy('views', 'desc')->take(2)->get());
        return response()->json(['data' => $data], 200);
    }

    public function getAll($request){
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);

        $data = PostResource::collection(Post::where(['is_sold' => 0])->when(request()->get('show_more_type')=="new" , function ($q) {
            return $q->orderBy('id', 'desc');
        })->when(request()->get('show_more_type')=="popular" , function ($q) {

            return $q->orderBy('views', 'desc');
        })->paginate(10))->response()->getData(true);
        return response()->json(['data'=>$data], 200);
    }
    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     * to retrieve ads for authorized user
     */
    public function getAdDetails($request,$id){
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);
        $post = Post::where(['id'=> $id])->first();
        $post->update(['views' => ++$post->views]);
        $post = Post::find($id);
        $data['post_details'] =new PostResource($post);
        $data['more_ads'] = PostResource::collection(Post::where('company_id',$post->company_id)->where(['is_sold' => 0])->orderBy('id', 'desc')->take(5)->get());
        return response()->json(['data' => $data], 200);
    }
    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     * to retrieve ads by filter
     */
    public function filter($request)
    {
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        session(['user_id'=>$request->user_id]);

        $posts = Post::where(['is_sold' => 0])->when(request('status') , function ($q) {
                return $q->where('status', request('status'));
            })
            ->when(request('city_id') , function ($q) {
                return $q->where('area_id', request('city_id'));
            })
            ->when(request('location_id') , function ($q) {
                return $q->where('sub_area_id', request('location_id'));
            })
            ->when(request('type') , function ($q) {
                return $q->where('type', request('type'));
            })
            ->when(request('price_from') , function ($q) {
                return $q->where('price','>=', request('price_from'));
            })
            ->when(request('price_to') , function ($q) {
                return $q->where('price','<=', request('price_to'));
            })
            ->when(request('bedroom') , function ($q) {
                return $q->where('bedroom', request('bedroom'));
            })
            ->when(request('bath_room') , function ($q) {
                return $q->where('bath_room', request('bath_room'));
            })
            ->when(request('size_from') , function ($q) {
                return $q->where('size','>=', request('size_from'));
            })
            ->when(request('size_to') , function ($q) {
                return $q->where('size','<=', request('size_to'));
            })
            ->when(request('agent_id') , function ($q) {
                return $q->where('agent_id', request('agent_id'));
            })
            ->latest()->get();

        $projects = Project::when(request('city_id') , function ($q) {
                return $q->where('area_id', request('city_id'));
            })
            ->when(request('location_id') , function ($q) {
                return $q->where('sub_area_id', request('location_id'));
            })
            ->when(request('type') , function ($q) {
                return $q->where('type', request('type'));
            })
            ->when(request('price_from') , function ($q) {
                return $q->where('min_price','>=', request('price_from'));
            })
            ->when(request('price_to') , function ($q) {
                return $q->where('max_price','<=', request('price_to'));
            })
//            ->when(request('bedroom') , function ($q) {
//                return $q->where('bedroom', request('bedroom'));
//            })
//            ->when(request('bath_room') , function ($q) {
//                return $q->where('bath_room', request('bath_room'));
//            })
            ->when(request('size_from') , function ($q) {
                return $q->where('area_range','>=', request('size_from'));
            })
            ->when(request('size_to') , function ($q) {
                return $q->where('area_range','<=', request('size_to'));
            })
            ->when(request('agent_id') , function ($q) {
                return $q->where('agent_id', request('agent_id'));
            })
            ->latest()->get();
        $data['ads'] = PostResource::collection($posts);
        $data['porjects'] = ProjectResource::collection($projects);
        return response()->json(['data' => $data], 200);
    }
    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     * to retrieve ads for authorized user
     */

    public function userAds($request){
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        $user = Auth()->user();
        session(['user_id'=>$request->user_id]);

        $data['for_sale'] = ProjectResource::collection(Project::where(['user_id' => $user->id])->latest()->get());

        if($user->user_type != 3) {
            $data['for_sale'] = PostResource::collection(Post::where(['is_sold' => 0, 'status' => 'sale', 'user_id' => $user->id])->latest()->get());
            $data['for_rent'] = PostResource::collection(Post::where(['is_sold' => 0, 'status' => 'rent', 'user_id' => $user->id])->latest()->get());
        }
        return response()->json(['data' => $data], 200);
    }


    public function clientAds($request){
        session(['user_id'=>$request->user_id]);
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        $data = PostResource::collection(Post::whereNull('agent_id')->where(['is_sold' => 0])->latest()->paginate(10))->response()->getData(true);
        return response()->json($data, 200);
    }

    public function companiesAds($request){
        session(['user_id'=>$request->user_id]);
        $currency =$request->header('currency');
        session(['currency'=>$currency]);
        $data = PostResource::collection(Post::whereNotNull('company_id')->where(['is_sold' => 0])->latest()->paginate(10))->response()->getData(true);
        return response()->json($data, 200);
    }

    public function ads_by_user($user_id)
    {
        session(['user_id'=>$user_id]);
        $data = PostResource::collection(Post::whereUserId($user_id)->where(['is_sold' => 0])->latest()->get());
        return response()->json(['data' => $data], 200);
    }

    public function destroy($id)
    {
        try {
            $ad = Post::find($id);

            if(!isset($ad)){
                return helperJson(null, 'Ad Not Found',  Response::HTTP_NO_CONTENT);
            }
            $ad->delete();
            return helperJson(null, 'Ad Deleted Successfully',  Response::HTTP_OK);
        }catch(Exception $e){
            return helperJson(null, 'Process Failed ',  Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

}
