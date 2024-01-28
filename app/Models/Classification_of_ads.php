<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classification_of_ads extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $fillable = [
        'id',
        'image',
        'name_ar',
        'name_en',
        'name_ko',
    ];

}
