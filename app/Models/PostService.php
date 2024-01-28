<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostService extends Model
{
    use HasFactory;
    protected $table='services_of_posts';
    protected $guarded = [];

    public function service(){
        return $this->belongsTo(Service::class,'service_id');
    }
}
