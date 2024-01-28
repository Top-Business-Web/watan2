@extends('Admin/layouts/master')

@section('title')
    {{($setting->title) ?? ''}} | وسائل التواصل
@endsection
@section('page_name') وسائل التواصل @endsection
@section('content')
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="modal-body">
                <form id="updateForm" method="POST" enctype="multipart/form-data" action="{{route('update_social',$social->id)}}" >
                    @csrf
                    {{--                        @method('put')--}}
                    <input type="hidden" value="{{$social->id}}" name="id">
                    <div class="form-group">
                        <label for="name" class="form-control-label">Facebook</label>
                        <input type="url" name="facebook" class="form-control " id="about_ar" value="{{$social->facebook}}">
                    </div>
                    <div class="form-group">
                        <label for="name" class="form-control-label">Instagram</label>
                        <input  type="url" name="insta" class="form-control " id="about_ar" value="{{$social->insta}}">
                    </div>
                    <div class="form-group">
                        <label for="name" class="form-control-label">Twitter</label>
                        <input type="url" name="twitter" class="form-control " id="about_ar" value="{{$social->twitter}}">
                    </div>
                    <div class="form-group">
                        <label for="name" class="form-control-label">Snapchat</label>
                        <input  type="url" name="snap_chat" class="form-control " id="about_ar" value="{{$social->snap_chat}}">
                    </div>
                    <div class="form-group">
                        <label for="name" class="form-control-label">Whatsapp</label>
                        <input type="tel" name="whatsapp" class="form-control " id="about_ar" value="{{$social->whatsapp}}">
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" id="updateButton">تحديث</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $('.dropify').dropify()
    </script>

    @include('Admin/layouts/myAjaxHelper')
@endsection
@section('ajaxCalls')
    <script>
        // Add Using Ajax
        showEditModal('{{route('setting.social')}}');
        editScript();
    </script>
    <script>
        var allEditors = document.querySelectorAll('.editor');
        for (var i = 0; i < allEditors.length; ++i) {
            ClassicEditor.create(allEditors[i]);
        }
    </script>
@endsection
