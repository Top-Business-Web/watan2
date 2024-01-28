<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> وطن </title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link rel="icon" href="{{ asset('assets/front/') }}/images/svg.svg">

    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
          integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/swiper.min.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/animate.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/lity.min.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/style.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/style-rtl.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/bootstrap-rtl.min.css">
    <link rel="stylesheet" href="{{ asset('assets/front/') }}/css/gradient_colors/theme_color_1.css" id="color-option">

    <!--[if lt IE 9]>
    <script src="{{ asset('assets/front/') }}/js/html5shiv.min.js"></script>
    <script src="{{ asset('assets/front/') }}/js/respond.min.js"></script>
    <![endif]-->
{{--  toastr  --}}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    {{--  toastr  --}}

</head>

<body data-spy="scroll" data-target="#bs-example-navbar-collapse-1" data-offset="5"
      class="scrollspy-example without_bg_images">

<!-- navbar
========================================-->
<nav class="navbar navbar-default navbar-fixed-top appsLand-navbar navBar__style-2">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
                <span class="menu-toggle">
                    <i class="chart"></i>
                    <i class="chart"></i>
                    <i class="chart"></i>
                </span>
            <a class="navbar-brand" href="index-demo1-rtl-custom-shape1_color_bg.html">
                <img alt="" src="{{ asset('assets/front/') }}/images/WATAN.png">
            </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="app-links" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right appsLand-links">
                <li class="visible-xs-block text-center mobile-size-logo">
                    <a href="#">
                        <img alt="" class="imgApp" src="{{ asset('assets/front/') }}/images/WATAN.png">
                    </a>
                </li>
                <li><a href="#home">الرئيسية</a></li>
                <li><a href="#features">مميزات التطبيق </a></li>
                <li><a href="#screenShots">صور التطبيق</a></li>
                <li><a href="#download">تحميل التطبيق</a></li>


            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- Header
========================================-->
<header class="active-navbar appsLand-header" id="home">
    <div class="app-overlay">
        <div class="header-content">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-8">
                        <div class="site-intro-content" style="margin-top: 50px;">
                            <h1 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s"> تطبيق وطن</h1>
                            <p class="lead wow fadeInUp " style="margin-top:
                                30px;" data-wow-duration="1s" data-wow-delay="0.25s">
                                تعد شركة عقارات وطن  واحدة من الشركات العقارية الرائدة في المجال التي لها السبق في عدة مجالات، إذ كانت أول  في تطوير مفهوم "تعدد الاستخدامات" في المباني التجارية بين بيع التجزئة والمكاتب التجارية ومواقف السيارات في الوطن العربي والأولى في تقديم آلية "البناء-التشغيل-التحويل" قبل إعتماد نظام رسمي بذلك.

                            </p>
                            <ul class="list-inline list-unstyled header-links">
                                <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                                    <a href="#download"
                                       class="appsLand-btn appsLand-btn-gradient btn-inverse scrollLink">
                                        <span><i class="fa fa-download"></i> تحميل </span>
                                    </a>
                                </li>
                                <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.75s">
                                    <a href="#contact" id="contactUSPage"
                                       class="appsLand-btn appsLand-btn-gradient btn-inverse scrollLink " >
                                        <span><i class="fa-thin fa-message"></i> تواصل معنا </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-lg-offset-1 col-md-4 hidden-xs hidden-sm">
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <img alt="" src="{{ asset('assets/front/') }}/images/65749.png" class="img-responsive">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="formSend active" >
    <form action="" id="add-project-form" data-action="{{ route('store_contact') }}">
        @csrf
        <i class="fa-solid fa-xmark" id="closeMark"></i>
        <h3 class="text-center">
            اترك رسالتك لنا
        </h3>
        <div class="row">
            <!--  -->
            <div class="col-md-12">
                <div class="FormInput">
                    <input type="text" required placeholder="الاسم بالكامل" name="name">
                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <!--  -->
            <div class="col-md-12">
                <div class="FormInput">
                    <input type="email" required placeholder="البريد الالكتروني" name="email">
                    @error('email')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <!--  -->
            <div class="col-md-12">
                <div class="FormInput">
                    <input type="text" required placeholder=" موضوع الرسالة " name="subject">
                    @error('subject')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <!--  -->
            <div class="col-md-12">
                <div class="FormInput">
                    <textarea name="message" required id="" cols="30" rows="10" placeholder="رسالتك" ></textarea>
                    @error('message')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>

        </div>
        <button class="SendFormB" type="submit">
            ارسال
        </button>
    </form>
</div>
<!-- Main Content
========================================-->
<main class="entry-main">

    <!-- Mini Feature Section
========================================-->
    <!-- <section class="mini-feature__style-2 section-without-title">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/01.png">
                        <img alt="" src="images/flat-icons/01.png">
                    </div>
                    <div class="data-box">
                        <h3>كود مرتب</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/02.png">
                        <img alt="" src="images/flat-icons/02.png">
                    </div>
                    <div class="data-box">
                        <h3>الوان عصريه</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/03.png">
                        <img alt="" src="images/flat-icons/03.png">
                    </div>
                    <div class="data-box">
                        <h3>تصميم عصري</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/04.png">
                        <img alt="" src="images/flat-icons/04.png">
                    </div>
                    <div class="data-box">
                        <h3>قالب متجاوب</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/05.png">
                        <img alt="" src="images/flat-icons/05.png">
                    </div>
                    <div class="data-box">
                        <h3>متطور دائماً</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                <div class="mini-feature-box">
                    <div class="icon-box">
                        <img alt="" src="images/flat-icons/06.png">
                        <img alt="" src="images/flat-icons/06.png">
                    </div>
                    <div class="data-box">
                        <h3>سريع التنصيب</h3>
                        <p>هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section> -->
    <!-- <section class="  Features " id="Features">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                مميزات التطبيق
            </h2>
            <span><span></span></span>
        </div>
      <div class="row">
        <div class="col-lg-8 col-md-5 mt-3 mt-md-5 p-1">
          <div class="py-3 aos-init aos-animate" data-aos="fade-up">
            <div class="row d-flex">
              <div class="col-lg-3 d-flex justify-content-center">
                <i class="fas fa-star  fa-2x"></i>
              </div>
              <div class="col-lg-9 p-1 pl-0">
                <h5>التميز عن الاخرين</h5>
                <p>نسعي دائما الي الاختلاف والتميز في كل شي عن الاخرين ... </p>
              </div>
            </div>
          </div>
          <div class="py-3 aos-init aos-animate" data-aos="fade-up">
            <div class=" row d-flex">
              <div class="col-3 d-flex justify-content-center p-1">
                <i class="fas fa-rocket  fa-2x"></i>
              </div>
              <div class="col-9 p-1">
                <h5>السرعة في الاستخدام</h5>
                <p> سهوله التتنقل بين صفحات التطبيق تجعل استخدامه سريع ...</p>
              </div>
            </div>
          </div>
          <div class="py-3 aos-init aos-animate" data-aos="fade-up">
            <div class=" row d-flex">
              <div class="col-3 d-flex justify-content-center p-1">
                <i class="fa-solid fa-star"></i>
              </div>
              <div class="col-9 p-1">
                <h5>التحكم في الاعدادات </h5>
                <p>يمكنك ضبط الاعدادات التي تناسبك من داخل التطبيق ... </p>
              </div>
            </div>
          </div>
          <div class="py-3 aos-init aos-animate" data-aos="fade-up">
            <div class=" row">
              <div class="col-3 d-flex justify-content-center p-1">
                <i class="fas fa-users  fa-2x"></i>
              </div>
              <div class="col-9 p-1">
                <h5>التواصل</h5>
                <p>نهتم دائما بالتواصل مع العملاء عن طريق مواقع التواصل الاجتماعي ... </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-7">
          <img src="images/mob1.png" class=" mt-4  w-100">
        </div>
      </div>
    </div>
  </section> -->
    <!-- ScreenShots Section
========================================-->
    <section class="screenShots" id="screenShots">
        <div>
            <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                <h2>
                    لقطات
                </h2>
                <span><span></span></span>
            </div>
            <div class="app-screen">
                <div class="mobile-mockup text-center">
                    <img alt="" src="{{ asset('assets/front/') }}/images/mobile__.png">
                </div>
                <!-- Slider main container -->
                <div class="swiper-container wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/splash.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/ABOUT US.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/Untitled-1.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/user.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/Untitled-2.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/Untitled-3.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/Forget Password.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/blog detales.png" class="img-responsive">
                        </div>
                        <div class="swiper-slide">
                            <img alt="" src="{{ asset('assets/front/') }}/images/img/report.png" class="img-responsive">
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="custom_slider_arrows">
                        <ul class="list-inline list-unstyled">
                            <li>
                                <button class="appsLand-btn appsLand-btn-gradient screenShots__style-1__btn-next">
                                    <span><i class="fa fa-angle-right"></i></span>
                                </button>
                            </li>
                            <li>
                                <button class="appsLand-btn appsLand-btn-gradient screenShots__style-1__btn-prev">
                                    <span><i class="fa fa-angle-left"></i></span>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Download Section
========================================-->
    <section class="download section-bg-img" id="download">
        <div class="app-overlay">
            <div class="container">
                <div class="section-title style-gradient white-color wow fadeInUp" data-wow-duration="1s"
                     data-wow-delay="0s">
                    <h2>
                        تحميل التطبيق
                    </h2>
                    <span><span></span></span>
                </div>
                <div class="download-buttons">
                    <div class="row">
                        <!-- <div class="col-sm-4">
                        <div class="wow fadeInUp first-download-btn" data-wow-duration="1s" data-wow-delay="0.25s">
                            <a href="#" class="appsLand-btn appsLand-btn-gradient appsLand-btn-larg"><span><i class="fa fa-windows"></i> وندوز ستور</span></a>
                        </div>
                    </div> -->
                        <div class="col-sm-6">
                            <div class="wow fadeInUp second-download-btn" data-wow-duration="1s"
                                 data-wow-delay="0.5s">
                                <a href="#!"
                                   class="appsLand-btn appsLand-btn-gradient appsLand-btn-larg"><span><i
                                                class="fa-brands fa-google-play"></i>Google Play</span></a>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="wow fadeInUp third-download-btn" data-wow-duration="1s"
                                 data-wow-delay="0.75s">
                                <a href="#" class="appsLand-btn appsLand-btn-gradient appsLand-btn-larg"
                                   title="soon"><span><i class="fa-brands fa-apple"></i> Apple Store </span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features Section
========================================-->
    <section class="features Features Features12" id="features">
        <div class="container">
            <!-- <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                ميزاتنا
            </h2>
            <span><span></span></span>
        </div>
        <div class="appInfo-container">
            <div class="row appInfo-row">
                <div class="col-md-6 col-md-offset-1 col-sm-7">
                    <div class="appInfo-data wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <h2>سهل الاستخدام</h2>
                        <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                        <a href="#" class="appsLand-btn appsLand-btn-gradient"><span>قرأه المزيد</span></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 hidden-xs">
                    <div class="img-box wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                        <img alt="" src="images/mockups/02-rtl.png" class="img-responsive">
                    </div>
                </div>
            </div>
            <div class="row appInfo-row">
                <div class="col-md-4 col-md-offset-1 col-sm-5 hidden-xs">
                    <div class="img-box wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <img alt="" src="images/mockups/02.png" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-6 col-sm-7">
                    <div class="appInfo-data wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <h2>تصميم عصري</h2>
                        <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                        <a href="#" class="appsLand-btn appsLand-btn-gradient"><span>قرأه المزيد</span></a>
                    </div>
                </div>
            </div>
        </div> -->
            <div class="row align-items-center">
                <div class="col-lg-8 col-md-5 mt-3 mt-md-5 p-1">
                    <div class="py-3 aos-init aos-animate xc" data-aos="fade-up">
                        <div class="row d-flex ">
                            <div class="col-3 d-flex justify-content-center p-1">
                                <i class="fas fa-star  fa-2x"></i>
                            </div>
                            <div class="col-9 p-1  pl-0">
                                <h5>التميز عن الاخرين</h5>
                                <p>نسعي دائما الي الاختلاف والتميز في كل شي عن الاخرين ... </p>
                            </div>
                        </div>
                    </div>
                    <div class="py-3 aos-init aos-animate xc" data-aos="fade-up">
                        <div class=" row">
                            <div class="col-3 d-flex justify-content-center p-1">
                                <i class="fas fa-rocket  fa-2x"></i>
                            </div>
                            <div class="col-9 p-1">
                                <h5>السرعة في الاستخدام</h5>
                                <p> سهوله التتنقل بين صفحات التطبيق تجعل استخدامه سريع ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="py-3 aos-init aos-animate xc" data-aos="fade-up">
                        <div class=" row">
                            <div class="col-3 d-flex justify-content-center p-1">
                                <i class="fas fa-cog  fa-2x"></i>
                            </div>
                            <div class="col-9 p-1">
                                <h5>التحكم في الاعدادات </h5>
                                <p>يمكنك ضبط الاعدادات التي تناسبك من داخل التطبيق ... </p>
                            </div>
                        </div>
                    </div>
                    <div class="py-3 aos-init aos-animate xc" data-aos="fade-up">
                        <div class=" row">
                            <div class="col-3 d-flex justify-content-center p-1">
                                <i class="fas fa-users  fa-2x"></i>
                            </div>
                            <div class="col-9 p-1">
                                <h5>التواصل</h5>
                                <p>نهتم دائما بالتواصل مع العملاء عن طريق مواقع التواصل الاجتماعي ... </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-7"  >
                    <div style="height: 500px;width: 100%; ">
                        <img src="{{ asset('assets/front/') }}/images/img/splash.png" class=" mt-4  img-responsive ">
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Pricing Section
========================================-->

    <!-- Pricing Section
========================================-->
    <!-- <section class="pricing" id="pricing">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                آسعارنا
            </h2>
            <span><span></span></span>
        </div>
        <div class="pricing-tables">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricing-table wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="pricing-header">
                            <h2>اساسيه</h2>
                        </div>
                        <div class="pricing-price">
                            <p><span class="sup">$</span> <span class="price">39</span> <span class="sub">/الشهر</span>
                            </p>
                        </div>
                        <ul class="pricing-feature list-unstyled">
                            <li><span>إجمالي المستخدمين</span><span>20</span></li>
                            <li><span>أنماط غير محدود</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>الحماية المتقدمة</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>سحابة التخزين</span><span class="sec-color-text"><i class="fa fa-remove"></i></span></li>
                            <li><span>24/7 خدمة العملاء</span><span class="sec-color-text"><i class="fa fa-remove"></i></span></li>
                            <li><span>النسخ الاحتياطي</span><span class="sec-color-text"><i class="fa fa-remove"></i></span></li>
                        </ul>
                        <div class="pricing-btn">
                            <a href="#" class="appsLand-btn appsLand-btn-gradient btn-inverse"><span>شراء</span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricing-table pricing-recommended wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="pricing-header">
                            <h2>شخصيه</h2>
                        </div>
                        <div class="pricing-price">
                            <p><span class="sup">$</span> <span class="price">59</span> <span class="sub">/الشهر</span>
                            </p>
                        </div>
                        <ul class="pricing-feature list-unstyled">
                            <li><span>إجمالي المستخدمين</span><span>35</span></li>
                            <li><span>أنماط غير محدود</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>الحماية المتقدمة</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>سحابة التخزين</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>24/7 خدمة العملاء</span><span class="sec-color-text"><i class="fa fa-remove"></i></span></li>
                            <li><span>النسخ الاحتياطي</span><span class="sec-color-text"><i class="fa fa-remove"></i></span></li>
                        </ul>
                        <div class="pricing-btn">
                            <a href="#" class="appsLand-btn appsLand-btn-gradient"><span>شراء</span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="pricing-table wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.75s">
                        <div class="pricing-header">
                            <h2>شركه</h2>
                        </div>
                        <div class="pricing-price">
                            <p><span class="sup">$</span> <span class="price">79</span> <span class="sub">/الشهر</span>
                            </p>
                        </div>
                        <ul class="pricing-feature list-unstyled">
                            <li><span>إجمالي المستخدمين</span><span>50</span></li>
                            <li><span>أنماط غير محدود</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>الحماية المتقدمة</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>سحابة التخزين</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>24/7 خدمة العملاء</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                            <li><span>النسخ الاحتياطي</span><span class="main-color-text"><i class="fa fa-check"></i></span></li>
                        </ul>
                        <div class="pricing-btn">
                            <a href="#" class="appsLand-btn appsLand-btn-gradient btn-inverse"><span>شراء</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

    <!-- Testimonials Section
========================================-->
    <!-- <section class="testimonials section-bg-img" id="testimonials">
    <div class="app-overlay">
        <div class="container">
            <div class="section-title style-gradient white-color wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                <h2>
                    آراء العملاء
                </h2>
                <span><span></span></span>
            </div>
            <div class="testimonials-template">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="testimonials-slider-container wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide testimonials-slide">
                                    <div class="row table-row">
                                        <div class="col-lg-3 col-left table-cel">
                                            <div class="client-info text-center">
                                                <div class="client-pic">
                                                    <img alt="" src="images/clients/01.jpg" class="center-block">
                                                </div>
                                                <h4 class="client-name">كريم طارق</h4>
                                                <p class="client-career">مصمم مواقع</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-9 col-right table-cel">
                                            <div class="client-review">
                                                <p>
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide testimonials-slide">
                                    <div class="row table-row">
                                        <div class="col-lg-3 col-left table-cel">
                                            <div class="client-info text-center">
                                                <div class="client-pic">
                                                    <img alt="" src="images/clients/02.jpg" class="center-block">
                                                </div>
                                                <h4 class="client-name">محمد احمد</h4>
                                                <p class="client-career">مدير</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-9 col-right table-cel">
                                            <div class="client-review">
                                                <p>
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide testimonials-slide">
                                    <div class="row table-row">
                                        <div class="col-lg-3 col-left table-cel">
                                            <div class="client-info text-center">
                                                <div class="client-pic">
                                                    <img alt="" src="images/clients/03.jpg" class="center-block">
                                                </div>
                                                <h4 class="client-name">احمد محمود</h4>
                                                <p class="client-career">مبرمج</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-9 col-right table-cel">
                                            <div class="client-review">
                                                <p>
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="testimonials-slider-button-prev swiper-button-prev"></div>
                            <div class="testimonials-slider-button-next swiper-button-next"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

    <!-- Team Section
========================================-->
    <!-- <section class="team__style-2">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                فريقنا
            </h2>
            <span><span></span></span>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="team-member wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                    <div class="team-member-content">
                        <div class="member-pic">
                            <img alt="" src="images/team/01.jpg" class="img-responsive">
                        </div>
                        <div class="member-info">
                            <div class="info-content">
                                <div class="name-career">
                                    <h4>كريم طارق</h4>
                                    <span>مصمم مواقع</span>
                                </div>
                                <ul class="list-inline list-unstyled member-social">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-behance"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="team-member-content">
                        <div class="member-pic">
                            <img alt="" src="images/team/02.jpg" class="img-responsive">
                        </div>
                        <div class="member-info">
                            <div class="info-content">
                                <div class="name-career">
                                    <h4>محمد محمود</h4>
                                    <span>مدير</span>
                                </div>
                                <ul class="list-inline list-unstyled member-social">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-behance"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.75s">
                    <div class="team-member-content">
                        <div class="member-pic">
                            <img alt="" src="images/team/03.jpg" class="img-responsive">
                        </div>
                        <div class="member-info">
                            <div class="info-content">
                                <div class="name-career">
                                    <h4>حسين احمد</h4>
                                    <span>نائب مدير</span>
                                </div>
                                <ul class="list-inline list-unstyled member-social">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-behance"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="team-member wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="team-member-content">
                        <div class="member-pic">
                            <img alt="" src="images/team/05.jpg" class="img-responsive">
                        </div>
                        <div class="member-info">
                            <div class="info-content">
                                <div class="name-career">
                                    <h4>اسلام طارق</h4>
                                    <span>مبرمج</span>
                                </div>
                                <ul class="list-inline list-unstyled member-social">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-behance"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

    <!-- Video Section
========================================-->
    <!-- <section class="video section-bg-img">
    <div class="app-overlay">
        <div class="container">
            <div class="section-title style-gradient wow fadeInUp white-color" data-wow-duration="1s" data-wow-delay="0s">
                <h2>
                    فيديو
                </h2>
                <span><span></span></span>
            </div>
            <div class="play-video-icon wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                <a href="http://m.youtube.com/watch?v=XSGBVzeBUbk" data-lity="">
                    <img alt="" src="images/icon-14.png">
                </a>
            </div>
        </div>
    </div>
</section> -->

    <!-- FAQ Section
========================================-->
    <!-- <section class="faq">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                الاسئلة المكررة
            </h2>
            <span><span></span></span>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel-group questions-container" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a class="gradient-bg" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <span>كيف أقوم بإدراج غرف متعددة؟</span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <p>                                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">
                                <a class="collapsed gradient-bg" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <span>كيف يمكنني إدارة الإخطارات؟</span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body">
                                <p>                                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">
                                <a class="collapsed gradient-bg" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <span>كيف أقوم بتحرير التقويم الخاص بي؟</span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body">
                                <p>                                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title">
                                <a class="collapsed gradient-bg" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                    <span>لماذا تم إلغاء تنشيط بطاقة بياناتي؟</span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <div class="panel-body">
                                <p>                                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-lg-offset-1 col-md-6 hidden-sm hidden-xs">
                <img alt="" src="images/horizontal/01.png" class="img-responsive wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
            </div>
        </div>
    </div>
</section> -->

    <!-- Statistics Section
========================================-->
    <!-- <section class="statistics section-without-title section-bg-img">
    <div class="app-overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="stats wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
                        <div class="stats-icon">
                            <i class="fa fa-download"></i>
                        </div>
                        <div class="stats-data">
                            <p class="timer" data-from="70" data-to="2750" data-speed="6000">0</p>
                            <h5>تحميل</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stats wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <div class="stats-icon">
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="stats-data">
                            <p class="timer" data-from="70" data-to="1000" data-speed="6000">0</p>
                            <h5>تقييم</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stats wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="stats-icon">
                            <i class="fa fa-user-circle"></i>
                        </div>
                        <div class="stats-data">
                            <p class="timer" data-from="70" data-to="2200" data-speed="6000">0</p>
                            <h5>عميل سعيد</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stats wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.75s">
                        <div class="stats-icon">
                            <i class="fa fa-support"></i>
                        </div>
                        <div class="stats-data">
                            <p class="timer" data-from="70" data-to="900" data-speed="6000">0</p>
                            <h5>خدمه عملاء</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->

    <!-- Blog Section
========================================-->
    <!-- <section class="blog" id="blog">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                أخر الاخبار
            </h2>
            <span><span></span></span>
        </div>
        <div class="posts">
            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <article class="normal-post wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                            <figure class="entry-header">
                                <div class="post-image">
                                    <img alt="" src="images/blog/01.jpg" class="img-responsive">
                                </div>
                            </figure>
                            <div class="entry-content">
                                <div class="entry-post-info">
                                    <h4><a href="#">خبر حلو</a></h4>
                                    <p class="posted-on"><span>7</span> أكتوبر </p>
                                </div>
                                <div class="entry-expert">
                                    <p>
                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.
                                    </p>
                                    <div class="post-readMore">
                                        <a href="#" class="pull-left read-more-link">
                                            قرأه المزيد <i class="fa fa-long-arrow-left"></i>
                                        </a>
                                        <span class="pull-right"><a href="#">1 تعليق</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="entry-footer">
                                <ul class="entry-tags list-unstyled list-inline">
                                    <li><a href="#">تصميم</a></li>
                                    <li><a href="#">برمجه</a></li>
                                    <li><a href="#">جرافك</a></li>
                                </ul>
                            </div>
                        </article>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div>
                        <article class="normal-post wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                            <figure class="entry-header">
                                <div class="post-image">
                                    <img alt="" src="images/blog/02.jpg" class="img-responsive">
                                </div>
                            </figure>
                            <div class="entry-content">
                                <div class="entry-post-info">
                                    <h4><a href="#">خبر جميل</a></h4>
                                    <p class="posted-on"><span>27</span> أكتوبر </p>
                                </div>
                                <div class="entry-expert">
                                    <p>
                                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.
                                    </p>
                                    <div class="post-readMore">
                                        <a href="#" class="pull-left read-more-link">
                                            قرأه المزيد <i class="fa fa-long-arrow-left"></i>
                                        </a>
                                        <span class="pull-right"><a href="#">1 تعليق</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="entry-footer">
                                <ul class="entry-tags list-unstyled list-inline">
                                    <li><a href="#">تصميم</a></li>
                                    <li><a href="#">برمجه</a></li>
                                    <li><a href="#">جرافك</a></li>
                                </ul>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->



    <!-- Client Logo Section
========================================-->
    <!-- <div class="clients-logo">
    <div class="container">
        <div class="clientLogos-slider-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-1.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-7.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-2.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-3.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-4.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-9.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-5.png" class="img-responsive">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="#">
                        <img alt="" src="images/clients-logo/logo-6.png" class="img-responsive">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div> -->

    <!-- Subscribe Section
========================================-->
    <!-- <section class="subscribe">
    <div class="container">
        <div class="section-title style-gradient wow fadeInUp" data-wow-duration="1s" data-wow-delay="0s">
            <h2>
                نشرة الاخبار
            </h2>
            <span><span></span></span>
        </div>
        <form id="mc-form" class="ar-form">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="custom-input-group wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
                        <input id="mc-email" type="email" class="form-control" placeholder="البريد الالكتروني">
                        <button class="appsLand-btn appsLand-btn-gradient subscribe-btn"><span>اشتراك</span></button>
                        <div class="clearfix"></div>
                    </div>
                    <label for="mc-email"></label>
                </div>
            </div>
        </form>
    </div>
</section> -->
</main>

<!-- Option Template Menu
========================================-->
<!-- <aside class="option-template-menu">
<span class="option-template-menu-open"><i class="fa fa-gear"></i></span>
<div class="menu-content">
    <a href="#" class="appsLand-btn appsLand-btn-blue buy-now">شراء هيناتا</a>
    <div class="apps-option-group">
        <h5> الوان مدرجه </h5>
        <p>
            اختار واحد من مجموعتنا المتميزه من الالوان المدرجه
        </p>
        <ul class="list-unstyled color-list">
            <li class="active">
                <a href="css/gradient_colors/theme_color_1.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_2.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_3.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_4.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_5.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_6.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_7.css"></a>
            </li>
            <li>
                <a href="css/gradient_colors/theme_color_8.css"></a>
            </li>
        </ul>
    </div>

    <div class="apps-option-group">
        <h5> الوان اخري </h5>
        <p>
            يمكنك تركيب اللون الخاص بك فى دقائق معدوده
        </p>
    </div>
</div>
</aside> -->

<!-- Scroll To Top
========================================-->
<div class="scrollToTop appsLand-btn appsLand-btn-gradient"><span><i class="fa fa-angle-up"></i></span></div>

<!-- Loading
========================================-->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>

<!-- Footer
========================================-->
<footer class="apps-footer">
    <div class="footer-top">
        <div class="container">
            <div class="apps-short-info">
                <a href="#">
                    <img alt="" src="{{ asset('assets/front/') }}/images/img/logo.png">
                </a>
            </div>
            <ul class="list-inline list-unstyled footer-social-links">
                <li><a href="{{ $setting->facebook }}"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li><a href="{{ $setting->insta }}"><i class="fa-brands fa-instagram"></i></a></li>
                <li><a href="https://wa.me/{{ $setting->whatsapp }}"><i class="fa-brands fa-whatsapp"></i></a></li>
                <li><a href="{{ $setting->twitter }}"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="{{ $setting->snap_chat }}"><i class="fa-brands fa-snapchat"></i></a></li>

            </ul>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p> كل الحقوق محفوظه © {{ \Carbon\Carbon::now()->format('Y') }} تصميم <a href="#!"> وطن </a></p>
        </div>
    </div>
</footer>


<!-- start the script -->
<script src="{{ asset('assets/front/') }}/js/jquery-2.2.4.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/bootstrap.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/swiper.jquery.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/wow.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/jquery.countTo.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/lity.min.js"></script>

<script src="{{ asset('assets/front/') }}/js/plugins.js"></script>

<script src="{{ asset('assets/front/') }}/js/jquery.ajaxchimp.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/jquery.ajaxchimp.langs.min.js"></script>
<script src="{{ asset('assets/front/') }}/js/ajax.js"></script>
<!-- end the script -->
<script>
    $("#closeMark").click(function () {
        $(".formSend").addClass("active")
    })
    $("#contactUSPage").click(function () {
        $(".formSend").removeClass("active")
    })

    $(document).ready(function(){

        var form = '#add-project-form';

        $(form).on('submit', function(event){
            event.preventDefault();

            var url = $(this).attr('data-action');

            $.ajax({
                url: url,
                method: 'POST',
                data: new FormData(this),
                dataType: 'JSON',
                contentType: false,
                cache: false,
                processData: false,
                success:function(response)
                {
                    toastr.success('تم الارسال بنجاح');
                    $(form)[0].reset();
                    $(".formSend").addClass("active");
                },
                error: function(response)
                {
                    toastr.error(this.error);
                    // $(".formSend").addClass("active");
                }
            });
        });

    });
</script>
<script>
    //
</script>
</body>

</html>
