<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable  implements JWTSubject
{
    use HasFactory;
    protected $fillable=['id','name', 'email', 'whatsapp', 'phone', 'password', 'image', 'status', 'user_type', 'packages_balance', 'package_expired_date', 'otp', 'otp_requested_at'];
    protected $hidden = [
        'password',
        'remember_token',
    ];


    ##  Mutators and Accessors
    public function getImageAttribute()
    {
        return get_user_file($this->attributes['image']);
    }


    public function getJWTIdentifier()
    {
        return $this->getKey();
    }//end getJWTIdentifier

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }//end of getJWTCustomClaims

    public function company(){
        return $this->hasOne(Company::class,'user_id','id');
    }
    public function posts()
    {
        return $this->hasMany(Post::class);
//        return $this->hasMany('App\Author');
    }
    public function Report()
    {
        return $this->hasMany(Report::class);
//        return $this->hasMany('App\Author');
    }

    public function packageuser()
    {
        return $this->hasMany(PackageUser::class);
    }

    public function agent(){
        return $this->belongsTo(Agent::class,'id','user_id');
    }

    public function providers()
    {
        return $this->hasMany(Provider::class,'user_id','id');
    }

}
