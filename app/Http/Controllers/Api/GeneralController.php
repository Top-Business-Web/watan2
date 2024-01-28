<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\SettingResource;
use App\Models\Agent;
use App\Models\Area;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Service;
use App\Models\SubArea;
use App\Services\SettingsService;
use Illuminate\Http\Request;

class GeneralController extends Controller
{
    private $settings;

    /**
     * @param $settings
     */
    public function __construct(SettingsService $settings)
    {
        $this->settings = $settings;
    }

    public function setting()
    {
        return $this->settings->getAll();
    }

    //get list of cities
    public function cities()
    {
        $data = Area::all();
        return response()->json(['data' => $data], 200);
    }

    //get list of locations
    public function locations($area_id)
    {
        $data = SubArea::where('area_id', $area_id)->get();
        return response()->json(['data' => $data], 200);
    }

    //get list of amenities
    public function amenities()
    {
        $data = Service::all();
        return response()->json(['data' => $data], 200);
    }

    //get list of agents
    public function agents()
    {
        $data = Agent::all();
        return response()->json(['data' => $data], 200);
    }


}
