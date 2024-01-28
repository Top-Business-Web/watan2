<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CompanyRelatedResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
                'id'=>$this->user->id,
                'name'=>$this->user->name,
                'phone'=>$this->user->phone,
                'email'=>$this->user->email,
                'whatsapp'=>$this->user->whatsapp,
                'status'=>$this->user->status,
                'image'=>$this->user->image,
                'user_type'=>$this->user->user_type,
                'facebook'=>$this->facebook,
                'instagram'=>$this->instagram,
                'twitter'=>$this->twitter,
                'snapchat'=>$this->snapchat,
                'latitude'=>$this->latitude,
                'longitude'=>$this->longitude,
        ];
    }
}
