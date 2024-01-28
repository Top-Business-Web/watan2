<?php

namespace App\Http\Controllers\Api\Ad;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\UpdateAdService;

class EditAdController extends Controller
{
    protected UpdateAdService $update_ad;

    /**
     * @param UpdateAdService $update_ad
     */
    public function __construct(UpdateAdService $update_ad)
    {
        $this->update_ad = $update_ad;
    }

    public function update(Request $request,$id)
    {
        return $this->update_ad->update($request,$id);
    }

    public function update_project(Request $request,$id)
    {
        return $this->update_ad->update_project($request,$id);
    }

}
