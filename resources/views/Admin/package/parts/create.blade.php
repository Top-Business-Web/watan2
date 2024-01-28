<form id="addForm" class="addForm" method="POST" enctype="multipart/form-data" action="{{route('package.store')}}">
    @csrf
    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">نوع الباقه</label>
                <input type="text" required class="form-control" name="type" placeholder="">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">عدد الايام</label>
                <input type="number" required class="form-control" name="number_of_days" placeholder="">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <label for="btn_link" class="form-control-label">السعر</label>
                <input type="number" required class="form-control" name="price" placeholder="">
            </div>
        </div>

    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
        <button type="submit" class="btn btn-primary" id="addButton">اضافة</button>
    </div>
</form>


<script>
    $('.dropify').dropify();

</script>
