<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $fillable = ['facebook', 'instagram', 'twitter','snapchat', 'latitude', 'longitude','user_id'];


    ##  Mutators and Accessors
    public function getImageAttribute()
    {
        return getFile($this->attributes['image']);
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
    public function posts()
    {
        return $this->hasMany(Post::class, 'company_id','id');
    }
}
