<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilesOfProjectsAndPosts extends Model
{
    use HasFactory;
    protected $guarded = [];


    //  Handel Attachment file Link
    public function getAttachmentAttribute()
    {
//        if($this->attributes['type'] != 'video'){
//            return getFile($this->attributes['attachment']);
//        }
        return getFile($this->attributes['attachment']);
    }
}
