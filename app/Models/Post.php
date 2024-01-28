<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use AmrShawky\LaravelCurrency\Facade\Currency;

class Post extends Model
{
    use HasFactory;
    protected $fillable = ['user_id','company_id','status','is_sold','area_id','sub_area_id','title_ar','title_en','title_ku','description_ar','description_en','description_ku','furniture','type','price','currency','size','bedroom','bath_room','kitchen','living_room','dining_room','latitude'
        ,'location_name_ar','location_name_en','location_name_ku','longitude','advertizer_name_ar','advertizer_name_en','advertizer_name_ku','phone','whatsapp'];

    protected $with = ["images","videos","user","company","services"];

    protected $appends = ['is_favourite'];
    /**
     * @return float|mixed handle with accessors for price attribute
     */
//    public function getPriceAttribute()
//    {
//        if(session('currency') == "IQD") {
//            $price_IQD = Currency::convert()
//                ->from('USD')
//                ->to('IQD')
//                ->amount($this->attributes['price'])
//                ->date(\Carbon\Carbon::now()->format('Y-m-d'))
//                ->get();
//            return round($price_IQD, 2);
//        }else {
//            return $this->attributes['price'];
//        }
//    }
    ######## Relations ##########
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function company(){
        return $this->belongsTo(Company::class,'company_id');
    }

    public function area(){
        return $this->belongsTo(Area::class,'area_id');
    }
    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }

    public function agent(){
        return $this->belongsTo(Agent::class,'agent_id','id');
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id');
    }

    public function sub_category(){
        return $this->belongsTo(SubCategory::class,'sub_category_id');
    }


//    public function services(){
//        return $this->belongsToMany(Service::class,'services_of_posts','post_id','service_id');
//    }


    public function services(){
        return $this->hasMany(PostService::class,'post_id')->with('service');
    }

    public function projects(){
        return $this->belongsToMany(Project::class,'services_of_posts','post_id','project_id');
    }

    public function images(){
        return $this->hasMany(FilesOfProjectsAndPosts::class,'post_id')->where('type','image');
    }

    public function videos(){
        return $this->hasMany(FilesOfProjectsAndPosts::class,'post_id')->where('type','video');
    }


   
    /**
     * Get all of the post's views.
     */
    public function views()
    {
        return $this->morphMany(Views::class, 'viewable');
    }

    public function is_favourite()
    {
        $user_id =session('user_id');
        return $this->hasOne(PostFavourite::class, 'post_id')->where('user_id',$user_id);
    }

    public function getIsFavouriteAttribute()
    {
        $user_id =session('user_id');
        $favourite = $this->hasOne(PostFavourite::class, 'post_id')->where('user_id',$user_id);
        return ($favourite->count())? true : false;
    }
}
