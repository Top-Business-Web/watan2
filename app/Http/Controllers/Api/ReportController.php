<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ReportRequest;
use App\Services\ReportService;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    private $report;

    /**
     * @param ReportService $report
     */
    public function __construct(ReportService $report)
    {
        $this->report = $report;
    }

    public function store(ReportRequest $request)
    {
        return $this->report->store($request);
    }
}
