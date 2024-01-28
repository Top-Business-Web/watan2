<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="side-header">
        <a class="header-brand1" href="{{route('adminHome')}}">
            <img src="{{($setting->logo) ?? asset('assets/admin/images/logo11.jpg')}}" class="header-brand-img light-logo1" alt="logo">
        </a>
        <!-- LOGO -->
    </div>
    <ul class="side-menu">
        <li><h3>العناصر</h3></li>
        <li class="slide">
            <a class="side-menu__item" href="{{route('adminHome')}}">
                <i class="icon icon-home side-menu__icon"></i>
                <span class="side-menu__label">الرئيسية</span>
            </a>
        </li>
        <li class="slide">
            <a class="side-menu__item" href="{{route('admins.index')}}">
                <i class="fe fe-users side-menu__icon"></i>
                <span class="side-menu__label">المشرفين</span>
            </a>
        </li>




        <li class="slide">
            <a class="side-menu__item" data-toggle="slide" href="#">
                <i class="fe fe-settings side-menu__icon"></i>
                <span class="side-menu__label">الاعلانات</span><i class="angle fa fa-angle-left"></i>
            </a>
            <ul class="slide-menu">

                <li class="slide">
                    <a class="side-menu__item" href="{{route('posts.index')}}">
                        <i class="fas fa-sticky-note side-menu__icon"></i>
                        <span class="side-menu__label"> اعلانات المستخدمين</span>
                    </a>
                </li>
                <li class="slide">
                    <a class="side-menu__item" href="{{route('projects.index')}}">
                        <i class="fe fe-dollar-sign side-menu__icon"></i>
                        <span class="side-menu__label"> اعلانات المشاريع الاستثمارية</span>
                    </a>
                </li>
                <li class="slide">
                    <a class="side-menu__item" href="{{route('post_2.index')}}">
                        <i class="fe fe-dollar-sign side-menu__icon"></i>
                        <span class="side-menu__label"> اعلانات الشركات والمكاتب العقاريه</span>
                    </a>
                </li>

            </ul>

        </li>



        <li class="slide">
            <a class="side-menu__item" href="{{route('sliders.index')}}">
                <i class="fe fe-camera side-menu__icon"></i>
                <span class="side-menu__label">البانر المتحرك</span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{route('notifications.index')}}">
                <i class="fe fe-camera side-menu__icon"></i>
                <span class="side-menu__label"> إرسال إشعارات</span>
            </a>
        </li>
        <li class="slide">
            <a class="side-menu__item" href="{{route('report.index')}}">
                <i class="fe fe-camera side-menu__icon"></i>
                <span class="side-menu__label"> البلاغات</span>
            </a>
        </li>


        <li class="slide">
            <a class="side-menu__item" href="{{route('areas.index')}}">
                <i class="icon-directions side-menu__icon"></i>
                <span class="side-menu__label">المدن والاحياء</span>
            </a>
        </li>


        <li class="slide">
            <a class="side-menu__item" href="{{route('services.index')}}">
                <i class="fe fe-zap side-menu__icon"></i>
                <span class="side-menu__label"> المزايا والخدمات</span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{route('classification_of_ads.index')}}">
                <i class="fe fe-zap side-menu__icon"></i>
                <span class="side-menu__label">تصنيف الاعلانات</span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{route('rating.index')}}">
                <i class="fe fe-zap side-menu__icon"></i>
                <span class="side-menu__label">التصنيفات </span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{ route('blogs.index') }}">
                    <i class="fe fe-edit-3 side-menu__icon"></i>
                <span class="side-menu__label"> المقالات</span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{ route('package.index') }}">
                <i class="fe fe-package side-menu__icon"></i>
                <span class="side-menu__label">باقاتي</span>
            </a>
        </li>

        <li class="slide">
            <a class="side-menu__item" href="{{ route('packageUser.index') }}">
                <i class="fe fe-package side-menu__icon"></i>
                <span class="side-menu__label">باقات المستخدمين</span>
            </a>
        </li>

{{--        <li class="slide">--}}
{{--            <a class="side-menu__item" href="{{route('categories.index')}}">--}}
{{--                <i class="fe fe-list side-menu__icon"></i>--}}
{{--                <span class="side-menu__label"> الاقسام الرئيسية</span>--}}
{{--            </a>--}}
{{--        </li>--}}

{{--        <li class="slide">--}}
{{--        <a class="side-menu__item" href="{{route('users.index')}}">--}}
{{--            <i class="fe fe-users side-menu__icon"></i>--}}
{{--            <span class="side-menu__label">المستخدمين</span>--}}
{{--        </a>--}}

        <li class="slide">
            <a class="side-menu__item" data-toggle="slide" href="#">
                <i class="fe fe-settings side-menu__icon"></i>
                <span class="side-menu__label">المستخدمين</span><i class="angle fa fa-angle-left"></i>
            </a>
            <ul class="slide-menu">

                <li>
                        <a class="side-menu__item" href="{{route('users.index')}}">
                            <i class="fe fe-users side-menu__icon"></i>
                            <span class="side-menu__label">المستخدمين</span>
                        </a>
                </li>

                <li>
                    <a class="side-menu__item" href="{{route('users2')}}">
                        <i class="fe fe-users side-menu__icon"></i>
                        <span class="side-menu__label">المشاريع الاستثماريه</span>
                    </a>
                </li>

                <li>
                    <a class="side-menu__item" href="{{route('users3')}}">
                        <i class="fe fe-users side-menu__icon"></i>
                        <span class="side-menu__label">الشركات والمكاتب العقاريه</span>
                    </a>
                </li>

            </ul>

        </li>





{{--        <li>--}}
{{--            <a class="side-menu__item" href="{{ route('agents') }}">--}}
{{--                <i class="fe fe-users side-menu__icon"></i>--}}
{{--                <span class="side-menu__label">الوكلاء</span>--}}
{{--            </a>--}}
{{--        </li>--}}




{{--        <li class="slide">--}}
{{--            <a class="side-menu__item" href="{{route('companies.index')}}">--}}
{{--                <i class="ti-home side-menu__icon"></i>--}}
{{--                <span class="side-menu__label">المكاتب العقارية</span>--}}
{{--            </a>--}}
{{--        </li>--}}




        <li class="slide">
            <a class="side-menu__item" href="{{route('contact_us.index')}}">
                <i class="fe fe-message-circle side-menu__icon"></i>
                <span class="side-menu__label">الرسائل</span>
            </a>
        </li>



        <li class="slide">
            <a class="side-menu__item" data-toggle="slide" href="#">
                <i class="fe fe-settings side-menu__icon"></i>
                <span class="side-menu__label">الاعدادات</span><i class="angle fa fa-angle-left"></i>
            </a>
            <ul class="slide-menu">

                <li><a href="{{ route('setting.about') }}" class="slide-item"> من نحن</a></li>
                <li><a href="{{ route('setting.terms') }}" class="slide-item">الشروط و الاحكام</a></li>
                <li><a href="{{ route('setting.privacy') }}" class="slide-item">الخصوصية</a></li>
                <li><a href="{{ route('setting.social') }}" class="slide-item">وسائل التواصل</a></li>

            </ul>
        </li>





        <li class="slide">
            <a class="side-menu__item" href="{{route('admin.logout')}}">
                <i class="icon icon-lock side-menu__icon"></i>
                <span class="side-menu__label">تسجيل الخروج</span>
            </a>
        </li>

    </ul>
</aside>
