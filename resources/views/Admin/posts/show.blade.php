@extends('Admin/layouts/master')

@section('title')   | الاعلان {{$post->id}} @endsection
@section('page_name')  الاعلان @endsection
@section('content')
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">  الاعلان </h3>

                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <!--begin::Table-->
                        <table class="table table-striped table-bordered text-nowrap w-100" id="dataTable">
                            <thead>
                            <tr class="fw-bolder text-muted bg-light">
                                <th>#</th>
                                <th>الاعلان (ar)</th>
                                <th>الاعلان (en)</th>
                                <th>النوع</th>
                                <th>أضيف بواسطة</th>
                                <th>السعر</th>
                                <th>الحالة</th>
                                <th>وقت الاضافة</th>
                                <th>العمله</th>
{{--                                <th>الصوره</th>--}}
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


