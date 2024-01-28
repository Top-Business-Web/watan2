<form id="updateForm" method="POST" enctype="multipart/form-data"
      action="{{route('users.update',$user->id)}}" >
    @csrf
    @method('put')
    <input type="hidden" name="id" value="{{$user->id}}">
    <div class="form-group">
        <label for="image" class="form-control-label">الصورة</label>
        <input type="file" class="dropify" name="image" accept="image/png, image/gif, image/jpeg,image/jpg" data-default-file="{{$user->image}}"/>
        <span class="form-text text-danger text-center">مسموح بالصيغ الاتية  png, gif, jpeg, jpg</span>
    </div>

    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="link" class="form-control-label">الاسم </label>
                <input type="text" class="form-control" name="name" value="{{$user->name}}">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="link" class="form-control-label">البريد الالكتروني</label>
                <input type="email" class="form-control" name="email" value="{{$user->email}}">
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <label for="link" class="form-control-label">الواتساب</label>
                <input type="text" class="form-control" name="whatsapp" value="{{$user->whatsapp}}">
            </div>
        </div>

        <div class="col-6">
            <div class="form-group">
                <label for="link" class="form-control-label">الهاتف</label>
                <input type="text" class="form-control" name="phone" value="{{$user->phone}}">
            </div>
        </div>
    </div>




    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
        <button type="submit" class="btn btn-success" id="updateButton">تعديل</button>
    </div>
</form>
<script>
    $('.dropify').dropify()
</script>
