<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectFavourite extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function project_data()
    {
        return $this->belongsTo(Project::class,'project_id');
    }
}
