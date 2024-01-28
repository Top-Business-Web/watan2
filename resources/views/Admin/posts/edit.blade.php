<form id="updateForm" class="addForm" method="POST" enctype="multipart/form-data"
      action="{{url('posts/update/$post->id')}}">
    @csrf
{{--    @method('put')--}}
    <input type="hidden" name="id" value="{{$post->id}}">

    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">الاعلان باللغة العربية</label>
                <input type="text" required class="form-control" value="{{$post->title_ar}}" name="title_ar" placeholder="">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">الاعلان باللغة الانجليزية</label>
                <input type="text" required class="form-control" value="{{$post->title_en}}" name="title_en" placeholder="">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">النوع </label>
                <input type="text" required class="form-control" value="{{$post->type}}" name="type" placeholder="">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">أضيف بواسطة </label>
                <input type="text" required class="form-control" value="{{$post->agent_id}}" name="agent_id" placeholder="">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">السعر </label>
                <input type="text" required class="form-control" value="{{$post->price}}" name="price" placeholder="">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">الحالة </label>
                <input type="text" required class="form-control" value="{{$post->status}}" name="status" placeholder="">
            </div>
        </div>



    <div class="col-6">
        <div class="form-group">
            <label for="btn_link" class="form-control-label">العمله  </label>
            <input type="text" required class="form-control" value="{{$post->currency}}" name="currency" placeholder="">
        </div>
    </div>
    </div>




    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
        <button type="submit" class="btn btn-success" id="updateButton">تعديل</button>
    </div>
</form>
<script src="https://cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>
{{--<script src="{{asset('assets/admin/js/ckeditor.js')}}"></script>--}}

<script>
    $('.dropify').dropify();
</script>



