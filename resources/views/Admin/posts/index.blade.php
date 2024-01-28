@extends('Admin/layouts/master')
@section('title')
    {{($setting->title) ?? ''}} | اعلانات المستخدمين
@endsection
@section('page_name')   اعلانات المستخدمين  @endsection
@section('content')
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title"> اعلانات المستخدمين </h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <!--begin::Table-->
                        <table class="table table-striped table-bordered w-100" id="dataTable">
                            <thead>
                            <tr class="fw-bolder text-muted bg-light">
                                <th>#</th>
                                <th>الاعلان (ar)</th>
                                <th>أضيف بواسطة</th>
                                <th>رقم الهاتف</th>
                                <th>السعر</th>
                                <th>حالة الاعلان</th>
                                <th>وقت الاضافة</th>
                                <th class="rounded-end">التفاصيل</th>
                                <th class="rounded-end">العمليات</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!--Delete MODAL -->
        <div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">حذف بيانات</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input id="delete_id" name="id" type="hidden">
                        <p>هل انت متأكد من حذف البيانات التالية <span id="title" class="text-danger"></span>؟</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" id="dismiss_delete_modal">
                            الغاء
                        </button>
                        <button type="button" class="btn btn-danger" id="delete_btn">حذف !</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- MODAL CLOSED -->
        <!-- Edit MODAL -->
        <div class="modal fade bd-example-modal-lg" id="editOrCreate" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="example-Modal3">بيانات الخدمة</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="modal-body">

                    </div>
                </div>
            </div>
        </div>
        <!-- Edit MODAL CLOSED -->
    </div>
    @include('Admin/layouts/myAjaxHelper')

@endsection
@section('ajaxCalls')
    <script>
        var columns = [
            {data: 'id', name: 'id'},
            {data: 'title_ar', name: 'title_ar'},
            {data: 'user_id', name: 'user_id'},
            {data: 'phone', name: 'phone'},
            {data: 'price', name: 'price'},
            {data: 'status_post', name: 'status_post'},
            {data: 'created_at', name: 'created_at'},
            {data: 'details', name: 'details'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
        showData('{{route('posts.index')}}', columns);
        // Delete Using Ajax
        deleteScript('{{route('posts.delete')}}');
        // edit Using Ajax
        $(document).on('click', '#updateStatus', function() {
            var button = $(this);
            var postId = button.data('post-id');

                $.ajax({
                    type: 'POST',
                    url: '{{ route('update.status') }}',
                    data: {
                        postId: postId,
                        "_token": "{{ csrf_token() }}",
                    },
                    success: function(response) {
                        if(response.status === 200)
                        {
                            if (response.status_post === 'activate') {
                                button.html('محظور');
                                toastr.success('تم تفعيل الاعلان');
                                setTimeout(function() {
                                    location.reload();
                                }, 2000);
                            } else {
                                button.html('مفعل');
                                toastr.success('الاعلان محظور');
                                setTimeout(function() {
                                    location.reload();
                                }, 2000);
                            }
                        }
                    }
                });
        });

    </script>


@endsection



{{--@extends('Admin/layouts/master')--}}
{{--@section('title')--}}
{{--    {{($setting->title) ?? ''}} | اعلانات المستخدمين--}}
{{--@endsection--}}
{{--@section('page_name')   اعلانات المستخدمين  @endsection--}}
{{--@section('content')--}}
{{--    <div class="row">--}}
{{--        <div class="col-md-12 col-lg-12">--}}
{{--            <div class="card">--}}
{{--                <div class="card-header">--}}
{{--                    <h3 class="card-title"> اعلانات المستخدمين </h3>--}}
{{--                </div>--}}
{{--                <div class="card-body">--}}
{{--                    <div class="table-responsive">--}}
{{--                        <!--begin::Table-->--}}
{{--                        <table class="table table-striped table-bordered w-100" id="dataTable">--}}
{{--                            <thead>--}}
{{--                            <tr class="fw-bolder text-muted bg-light">--}}
{{--                                <th>#</th>--}}
{{--                                <th> الاعلان</th>--}}
{{--                                <th>أضيف بواسطة</th>--}}
{{--                                <th> السعر </th>--}}
{{--                                <th> وقت الاضافة</th>--}}
{{--                                <th class="rounded-end">العمليات</th>--}}
{{--                            </tr>--}}
{{--                            </thead>--}}

{{--                            @foreach($posts as $post)--}}

{{--                                <tbody>--}}
{{--                                <tr>--}}
{{--                                    @if($post->company_id == Null)--}}
{{--                                        <td>{{ $loop->iteration }}</td>--}}
{{--                                        <td>{{$post->title_ar}}</td>--}}
{{--                                        <td>{{ $post->user->name }}</td>--}}
{{--                                        <td>{{$post->price}}</td>--}}
{{--                                        <td>{{$post->created_at}}</td>--}}

{{--                                        <td>--}}
{{--                                            <a href="{{route('post_2/delete',$post->id)}}">--}}
{{--                                                <button style="" class="btn btn-pill btn-danger-light" data-toggle="modal" data-target="#delete_modal"--}}
{{--                                                        data-id=" {{$post->id}} " data-title="" {{$post->title_ar}} ">--}}
{{--                                                <i class="fas fa-trash"></i>--}}
{{--                                                </button>--}}
{{--                                            </a>--}}
{{--                                            @endif--}}

{{--                                        </td>--}}
{{--                                </tr>--}}
{{--                                </tbody>--}}
{{--                            @endforeach--}}
{{--                        </table>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}

{{--        <!--Delete MODAL -->--}}
{{--        <div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"--}}
{{--             aria-hidden="true">--}}
{{--            <div class="modal-dialog" role="document">--}}
{{--                <div class="modal-content">--}}
{{--                    <div class="modal-header">--}}
{{--                        <h5 class="modal-title" id="exampleModalLabel">حذف بيانات</h5>--}}
{{--                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                            <span aria-hidden="true">×</span>--}}
{{--                        </button>--}}
{{--                    </div>--}}
{{--                    <div class="modal-body">--}}
{{--                        <input id="delete_id" name="id" type="hidden">--}}
{{--                        <p>هل انت متأكد من حذف البيانات التالية <span id="title" class="text-danger"></span>؟</p>--}}
{{--                    </div>--}}
{{--                    <div class="modal-footer">--}}
{{--                        <button type="button" class="btn btn-default" data-dismiss="modal" id="dismiss_delete_modal">--}}
{{--                            الغاء--}}
{{--                        </button>--}}
{{--                        <button type="button" class="btn btn-danger" id="delete_btn">حذف !</button>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <!-- MODAL CLOSED -->--}}
{{--        <!-- Edit MODAL -->--}}
{{--        <div class="modal fade bd-example-modal-lg" id="editOrCreate" tabindex="-1" role="dialog" aria-hidden="true">--}}
{{--            <div class="modal-dialog modal-lg" role="document">--}}
{{--                <div class="modal-content">--}}
{{--                    <div class="modal-header">--}}
{{--                        <h5 class="modal-title" id="example-Modal3">بيانات الخدمة</h5>--}}
{{--                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                            <span aria-hidden="true">&times;</span>--}}
{{--                        </button>--}}
{{--                    </div>--}}
{{--                    <div class="modal-body" id="modal-body">--}}

{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <!-- Edit MODAL CLOSED -->--}}
{{--    </div>--}}



{{--@include('Admin/layouts/myAjaxHelper')--}}
{{--@endsection--}}
{{--@section('ajaxCalls')--}}

{{--@endsection--}}

