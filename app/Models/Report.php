<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    use HasFactory;
    protected $guarded = [];

    protected $fillable = [
        'description',
        'user_id',
        'post_id',
        'project_id'
    ];


    public function post(){
        return $this->belongsTo(Post::class,'post_id');
    }

    public function project(){
        return $this->belongsTo(project::class,'project_id');
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
    ##  Mutators and Accessors
    public function getImageAttribute()
    {
        return getFile($this->attributes['image']);
    }
}
