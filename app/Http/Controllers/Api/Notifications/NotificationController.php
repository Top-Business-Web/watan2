<?php

namespace App\Http\Controllers\Api\Notifications;

use App\Http\Controllers\Controller;
use App\Services\NotificationService;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    private NotificationService $notification;

    /**
     * @param NotificationService $notification
     */
    public function __construct(NotificationService $notification)
    {
        $this->notification = $notification;
        $this->middleware('auth_jwt');
    }

    public function index(){
        return $this->notification->getAll();
    }

    public function insert_token(Request $request)
    {
        return $this->notification->insert_token($request);
    }

}
