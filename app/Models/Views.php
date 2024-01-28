<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Views extends Model
{
    use HasFactory;

    protected $guarded = [];

    /**
     * Get all of the models that own views.
     */
    public function viewable()
    {
        return $this->morphTo();
    }
}
