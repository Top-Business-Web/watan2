<?php

namespace App\Http\Resources\Favourites;

use Illuminate\Http\Resources\Json\JsonResource;

class ProjectFavouriteResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return $this->project_data;
    }
}
