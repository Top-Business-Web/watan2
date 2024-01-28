<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PackageUser extends Model
{
    use HasFactory;

    protected $table = 'packages_users';

    protected $fillable = [
        'user_id',
        'package_id',
        'ended_at',
        'created_at'
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id','id');
    }

    public function package()
    {
        return $this->belongsTo(Package::class,'package_id','id');
    }
}
