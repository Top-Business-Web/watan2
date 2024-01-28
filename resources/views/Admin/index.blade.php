@extends('Admin/layouts/master')
@section('title')
    {{($setting->title) ?? 'الصفحة الرئيسية'}} | لوحة التحكم
@endsection
@section('page_name')
    الرئـيسية
@endsection
@section('content')

    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xl-4">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <h6 class="bold font-weight-bolder">عدد اعلانات المستخدمين</h6>
                            <h3 class="mb-2 number-font">{{ $posts->count() }}</h3>
{{--                            <div class="progress h-2">--}}
{{--                                <div class="progress-bar bg-orange--}}
{{--                                    @if($posts->count() > 5 )--}}
{{--                                 w-10--}}
{{--                                @elseif($posts->count() > 15)--}}
{{--                                    w-25--}}
{{--                                @elseif($posts->count() > 45)--}}
{{--                                    w-50--}}
{{--                                @elseif($posts->count() > 70)--}}
{{--                                    w-75--}}
{{--                                @elseif($posts->count() > 90)--}}
{{--                                    w-100--}}
{{--                                @elseif($posts->count() > 150)--}}
{{--                                    w-260--}}
{{--                                @elseif($posts->count() > 200)--}}
{{--                                    w-337--}}
{{--                                 @endif--}}
{{--                                " role="progressbar"></div>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xl-4">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <h6 class="bold font-weight-bolder">عدد اعلانات المشاريع</h6>
                            <h3 class="mb-2 number-font">{{ $projects->count() }}</h3>
{{--                            <div class="progress h-2">--}}
{{--                                <div class="progress-bar bg-secondary--}}
{{--                                @if($projects->count() > 5 )--}}
{{--                                 w-10--}}
{{--                                @elseif($projects->count() > 15)--}}
{{--                                    w-25--}}
{{--                                @elseif($projects->count() > 45)--}}
{{--                                    w-50--}}
{{--                                @elseif($projects->count() > 70)--}}
{{--                                    w-75--}}
{{--                                @elseif($projects->count() > 90)--}}
{{--                                    w-100--}}
{{--                                @elseif($projects->count() > 150)--}}
{{--                                    w-260--}}
{{--                                @elseif($projects->count() > 200)--}}
{{--                                    w-337--}}
{{--                                 @endif--}}
{{--                                " role="progressbar"></div>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xl-4">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <h6 class="">عدد العملاء</h6>
                            <h3 class="mb-2 number-font">{{ $users->count() }}</h3>
{{--                            <div class="progress h-2">--}}
{{--                                <div class="progress-bar bg-secondary1--}}
{{--                                @if($users->count() > 5 )--}}
{{--                                 w-10--}}
{{--                                @elseif($users->count() > 15)--}}
{{--                                    w-25--}}
{{--                                @elseif($users->count() > 45)--}}
{{--                                    w-50--}}
{{--                                @elseif($users->count() > 70)--}}
{{--                                    w-75--}}
{{--                                @elseif($users->count() > 90)--}}
{{--                                    w-100--}}
{{--                                @elseif($users->count() > 150)--}}
{{--                                    w-260--}}
{{--                                @elseif($users->count() > 200)--}}
{{--                                    w-337--}}
{{--                                 @endif"--}}
{{--                                     role="progressbar"></div>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8 col-sm-12 col-xl-8">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">الرسائل</h3>
                    <a class="btn btn-sm btn-danger" href="{{ route('contact_us.index') }}">
                        {{ $contact_total->count() }}
                        <i class="fe fe-message-circle"></i>
                        الذهاب الى الرسائل
                    </a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover  mb-0 text-nowrap">
                            <thead>
                            <tr>
                                <th>الاسم</th>
                                <th>الموضوع</th>
                                <th>الرسالة</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($messages as $message)
                                <tr>
                                    <td>{{ $message->name }}</td>
                                    <td>{{ $message->subject }}</td>
                                    <td>{{ $message->message }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div><!-- COL END -->
        <div class="col-lg-4 col-md-12 col-xl-4">
            <div class="card overflow-hidden">
                <div class="card-header">
                    <h3 class="card-title">المقالات</h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card shadow-none">
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <i style="font-size: 100px; color: #1d357e !important;" class="fe fe-edit-3 fs-40 text-primary"></i>
                                        <h4 class="mt-3 mb-0 number-font fs-20">{{ $blogs->count() }}</h4>
                                        <p class="text-muted mb-0">عدد المقالات</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection
@section('js')

@endsection

