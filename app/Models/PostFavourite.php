<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostFavourite extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function post_data()
    {
        return $this->belongsTo(Post::class,'post_id');
    }
}
