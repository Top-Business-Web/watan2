<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ContactUsRequest;
use App\Services\ContactUsService;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    private $contact_us;

    /**
     * @param ContactUsService $contact_us
     */
    public function __construct(ContactUsService $contact_us)
    {
        $this->contact_us = $contact_us;
    }

    public function store(ContactUsRequest $request)
    {
        return $this->contact_us->store($request);
    }
}
