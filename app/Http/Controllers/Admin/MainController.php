<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\ContactUs;
use App\Models\Post;
use App\Models\Project;
use App\Models\User;
use Twilio\Rest\Client;

class MainController extends Controller
{
    public function index()
    {
        $data['posts'] = Post::all();
        $data['blogs'] = Blog::all();
        $data['users'] = User::all();
        $data['messages'] = ContactUs::paginate(5);
        $data['contact_total'] = ContactUs::all();
        $data['projects'] = Project::all();
        return view('Admin.index')->with($data);
    }

    public function sendwhatsappMessage()
    {
        $twilioSid = env('TWILIO_SID');
        $twilioToken = env('TWILIO_AUTH_TOKEN');
        $twilioTWhatsappNumber = env('TWILIO_WHATSAPP_NUMBER');
        $recipientNumber = 'whatsapp:+20';
        $message = "Hello from Programmer Exporience";

        $twilio = new Client($twilioSid, $twilioToken);

        try {
            $twilio->message->create(
                $recipientNumber,
                [
                    "from" => 'whatsapp'.$twilioTWhatsappNumber,
                    "body" => $message,
                ]
            );
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
