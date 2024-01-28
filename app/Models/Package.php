<?php

namespace App\Models;

use AmrShawky\LaravelCurrency\Facade\Currency;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;

    protected $table = 'packages';

    protected $fillable = ['price','type','number_of_days','created_at'];

    public function packageuser()
    {
        return $this->hasMany(PackageUser::class);
    }
}
