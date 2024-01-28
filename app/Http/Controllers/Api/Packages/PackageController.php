<?php

namespace App\Http\Controllers\Api\Packages;

use App\Http\Controllers\Controller;
use App\Models\Package;
use App\Models\PackageUser;
use App\Models\User;
use App\Services\PackageService;
use App\ZainPay\ZainCash;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    private PackageService $package;

    /**
     * @param PackageService $package
     */
    public function __construct(PackageService $package)
    {
        $this->package = $package;
    }

    public function index()
    {
        return $this->package->list();
    }

    public function store(Request $request){
        return $this->package->store($request);
    }


    /**
     * @param Request $request
     * @return void
     */
    public function endUpdatePackage($user_id,$package_id,Request $request){
        return $this->package->endUpdatePackage($user_id,$package_id, $request);
    }//end fun

    /**
     * @param Request $request
     * @return mixed
     */
    public function endCheckOut(Request $request)
    {
//        return $request->status;
    }//end fun

}
