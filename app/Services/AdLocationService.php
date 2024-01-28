<?php

namespace App\Services;

use App\Models\Post;
use Illuminate\Support\Facades\DB;

class AdLocationService
{
    public function get_all_locations()
    {
        $data['ads_locations'] = DB::table('posts')->select('id','longitude','latitude')->get();
        $data['projects_locations'] = DB::table('projects')->select('id','longitude','latitude')->get();
        return response()->json(['data' => $data], 200);
    }
}
