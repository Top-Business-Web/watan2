<?php

namespace App\Http\Resources;

use App\Models\Cities;
use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResources extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $days = 0;

        if ($this->package_expired_date != null
            && $this->package_expired_date > Carbon::now()->toDateString()) {
            $datetime1 = new \DateTime(Carbon::now()->toDateString());
            $datetime2 = new \DateTime($this->package_expired_date);
            $interval = $datetime1->diff($datetime2);
            $days = $interval->format('%a') - 1;
        }
        return [
            'user'=>[
                'id'=>$this->id,
                'name'=>$this->name,
                'phone'=>$this->phone,
                'email'=>$this->email,
                'whatsapp'=>$this->whatsapp,
                'status'=>$this->status,
                'image'=>$this->image,
                'user_type'=>(int)$this->user_type,
                'packages_balance'=>$days,
                'agent_type'=>(isset($this->agent['type']))? $this->agent['type'] : null,
            ],
            'access_token'=>'Bearer '.$this->token??'',
            'token_type'=>'bearer'
        ];
    }
}
