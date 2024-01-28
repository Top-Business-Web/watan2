<?php

namespace App\Http\Controllers\Api\Ad;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\SoldAdService;

class SoldController extends Controller
{
    protected SoldAdService $sold_ad;

    /**
     * @param SoldAdService $sold_ad
     */
    public function __construct(SoldAdService $sold_ad)
    {
        $this->sold_ad = $sold_ad;
    }

    public function list()
    {
       return $this->sold_ad->list();
    }
    public function add_to_sold_ads($id)
    {
        return $this->sold_ad->add_to_sold_ads($id);
    }
}
