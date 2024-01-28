<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $guarded = ['images','videos','amenities',"floor_plans",'payment_plans','unit_details'];
//    protected $fillable = [
//        'user_id','company_id','project_status','area_id',
//        'sub_area_id','title_ar','title_en','title_ku',
//        'description_ar','description_en','description_ku',
//        'type','min_price','max_price','area_range','latitude'
//        ,'location_name_ar','location_name_en','location_name_ku',
//        'longitude','phone','whatsapp'];

    protected $with = [
        "images","videos",
        "user","services",
        "payment_plans:id,project_id,title,percent",
        "floor_plans"
//        ,"unit_details:id,project_id,price,area,bedrooms,bathrooms"
    ];

    protected $appends = ['is_favourite','unit_details'];


    ######## Relations ##########
    public function company(){
        return $this->belongsTo(Company::class,'company_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public function agent(){
        return $this->belongsTo(Agent::class,'agent_id');
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id');
    }

    public function sub_category(){
        return $this->belongsTo(SubCategory::class,'sub_category_id');
    }

    public function services(){
        return $this->hasMany(PostService::class,'project_id')->with('service');
    }

    public function images(){
        return $this->hasMany(FilesOfProjectsAndPosts::class,'project_id')->where('type','image');
    }

    public function videos(){
        return $this->hasMany(FilesOfProjectsAndPosts::class,'project_id')->where('type','video');
    }

    // add payment plans
    public function payment_plans(){
        return $this->hasMany(ProjectPaymentPlan::class,'project_id');
    }

    public function floor_plans(){
        return $this->hasMany(FilesOfProjectsAndPosts::class,'project_id')->where('type','file');
    }


    // add unit details
    public function getUnitDetailsAttribute(){
        $bedrooms = ProjectUnitDetails::select('bedrooms')->where(['project_id'=> $this->id])->groupBy(['bedrooms'])->pluck('bedrooms');
        $list = [];
        foreach($bedrooms as $bedroom){
            $list[] = ProjectUnitDetails::select('id','price','area','bedrooms','bathrooms')
                ->where(['project_id'=> $this->id,'bedrooms'=>$bedroom])->get();
        }
        return $list;
    }

    public function getIsFavouriteAttribute()
    {
        $user_id =session('user_id');
        $favourite = $this->hasOne(ProjectFavourite::class, 'project_id')->where('user_id',$user_id);
        return ($favourite->count())? true : false;
    }

}
