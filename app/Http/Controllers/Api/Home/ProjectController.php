<?php

namespace App\Http\Controllers\Api\Home;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Services\ProjectService;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    private $project;

    /**
     * @param ProjectService $project
     */
    public function __construct(ProjectService $project)
    {
        $this->project = $project;
    }

    public function projects_ads(Request $request)
    {
        return $this->project->projects_ads($request);
    }

    // ===============================================================================
    public function store(Request $request)
    {
        return $this->project->store($request);
    }
    // ===============================================================================

    // ===============================================================================
    public function find(Request $request,$id)
    {
        return $this->project->get_project_details($request,$id);
    }

    // ===============================================================================

    public function projects_by_user($user_id)
    {
        return $this->project->projects_by_user($user_id);
    }

    // ===============================================================================

    public function agents_by_user($user_id)
    {
        return $this->project->agents_by_user($user_id);
    }
    
    public function destroy($id){
        return $this->project->destroy($id);
    }
}
