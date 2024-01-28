@extends('Admin/layouts/master')

@section('title')
    | الاعلان {{$post->id}}
@endsection
@section('page_name')
    الاعلان
@endsection
@section('content')
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        section .details {
            width: 100%;
        }

        p, a {
            margin: 0;
        }

        .details .swiper {
            width: 60%;
            height: 50vh;
            max-width: 100%;
            margin-left: auto;
            margin-right: auto;
            display: block;
        }

        .details .swiper .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            /* Center slide text vertically */
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        .details .swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            -o-object-fit: cover;
            object-fit: cover;
            border-radius: 10px;
        }

        .details .detail {
            margin-top: 3vh;
            width: 60%;
            margin-left: auto;
            margin-right: auto;
            max-width: 100%;
        }

        .details .detail .detailDetail {
            display: flex;
            align-items: center;
            padding-bottom: 10px;
        }

        .details .detail .detailDetail p {
            font-size: 18px;
            font-weight: 500;
            color: rgb(61, 54, 54);
        }

        .details .detail .detailDetail p:last-child {
            padding-left: 10px;
            font-weight: 300;
            font-size: 14px;
        }

        /*# sourceMappingURL=style.css.map */
    </style>
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title"> صور الاعلان </h3>

                </div>

                <div class="card-body">

                    <section class="details">
                        <div class="container">
                            <div class="row">
                                <!-- img swiper -->
                                <div class="col-lg-12 ">
                                    <div class="swiper mySwiper">
                                        <div class="swiper-wrapper">
                                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                                <!-- Indicators -->
                                                <ol class="carousel-indicators">
                                                    @foreach($post->images as $image)
                                                        <li data-target="#myCarousel"
                                                            data-slide-to="{{$loop->iteration}}"
                                                            @if ($loop->first) class="active" @endif ></li>
                                                    @endforeach
                                                </ol>

                                                <!-- Wrapper for slides -->
                                                <div class="carousel-inner">
                                                    @foreach($post->images as $image)

                                                        <div class="item  @if ($loop->first) active @endif">
                                                            <img src="{{$image->attachment}}" alt="Los Angeles"
                                                                 style="width: 100%; height: 320px;">
                                                        </div>
                                                    @endforeach

                                                </div>

                                                <!-- Left and right controls -->
                                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </div>


                                        </div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                </div>
                                <!-- details -->

                            </div>
                        </div>
                    </section>


                </div>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title"> تفاصيل الاعلان </h3>

                </div>

                <div class="card-body">
                    <h2 style="background-color: #0b7ec4; text-align: center;">التفاصيل</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">{{ $post->title_ar }}</div>
                            <div class="col-md-3"><label for="">اسم المشروع:</label></div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-3">{{ $post->created_at->toDateString() }}</div>
                            <div class="col-md-3"><label for="">تم النشر في:</label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->status }}</div>
                            <div class="col-md-3"><label for="">نوع الاعلان:</label></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->phone }}</div>
                            <div class="col-md-3"><label for="">التليفون:</label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->furniture ? "نعم" : "لا" }}</div>
                            <div class="col-md-3"><label for="">مفروش:</label></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->price }}</div>
                            <div class="col-md-3"><label for="">السعر:</label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->bedroom }}</div>
                            <div class="col-md-3"><label for="">عدد غرف النوم:</label></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->size }} متر مربع</div>
                            <div class="col-md-3"><label for="">المساحة:</label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->bath_room }}</div>
                            <div class="col-md-3"><label for="">عدد دورات المياة:</label></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->description_ar }}</div>
                            <div class="col-md-3"><label for="">تفاصيل:</label></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->is_sold == '0' ? 'غير مباع' : 'تم بيعه' }}</div>
                            <div class="col-md-3"><label for="">الحالة:</label></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-md-3">{{ $post->views }}</div>
                            <div class="col-md-3"><label for="">عدد المشاهدات:</label></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 30,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });
    </script>
    @include('Admin/layouts/myAjaxHelper')
@endsection
@section('ajaxCalls')

    <script>
        var columns = [
            {data: 'id', name: 'id'},
            {data: 'title_ar', name: 'title_ar'},
            {data: 'title_en', name: 'title_en'},
            {data: 'type', name: 'type'},
            {data: 'user_id', name: 'user_id'},
            {data: 'price', name: 'price'},
            {data: 'status', name: 'status'},
            {data: 'created_at', name: 'created_at'},
            {data: 'currency', name: 'currency'},
            // {data: "image", name: "image", orderable: false, searchable: false},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
        showData('{{route('post/show',$post->id)}}', columns);
        // Delete Using Ajax
        {{--deleteScript('{{route('post.delete')}}');--}}
        // Add Using Ajax

        editScript();
    </script>
@endsection


