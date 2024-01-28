<form id="addForm" class="addForm" method="POST" enctype="multipart/form-data"
      action="{{route('notifications.store')}}">
    @csrf
    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">عنوان الإشعار</label>
                <input type="text" required class="form-control" name="title" placeholder="">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">تفاصيل</label>
                <textarea type="text" required class="form-control" name="body" placeholder=""></textarea>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
        <button type="submit" class="btn btn-primary" id="addButton">ارسال لكل مستخدمي التطبيق</button>
    </div>
</form>
<script>
    $('.dropify').dropify()
</script>

