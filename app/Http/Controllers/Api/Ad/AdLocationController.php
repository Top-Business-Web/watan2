<?php

namespace App\Http\Controllers\Api\Ad;

use App\Http\Controllers\Controller;
use App\Services\AdLocationService;
use Illuminate\Http\Request;

class AdLocationController extends Controller
{
    private $location;

    /**
     * @param AdLocationService $location
     */
    public function __construct(AdLocationService $location)
    {
        $this->location = $location;
    }

    public function index()
    {
        return $this->location->get_all_locations();
    }
}
