<?php

namespace App\Http\Controllers\Api\Home;

use App\Http\Controllers\Controller;
use App\Http\Resources\SliderResource;
use App\Models\Slider;
use Illuminate\Http\Request;
use function Composer\Autoload\includeFile;

class SliderController extends Controller
{
    //
    /**
     *  ============================================================
     *
     *  ------------------------------------------------------------
     *
     *  ============================================================
     */
    public function index()
    {
        $data = SliderResource::collection(Slider::whereDate('expired_at', '>', now())->get());
        if ($data->count() == 0) {
            $data = SliderResource::collection(Slider::whereNull('expired_at')->get());
        }
        return response()->json(['data' => $data], 200);

    }

}
