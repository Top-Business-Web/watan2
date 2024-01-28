    <form id="updateForm" method="POST" enctype="multipart/form-data"
          action="{{route('classification_of_ads.update',$classification_of_ads->id)}}" >

{{--        @method('PUT')--}}
        @csrf
        <input type="hidden" name="id" value="{{$classification_of_ads->id}}">
        <div class="row">


            <div class="form-group col-md-12">
                <label for="image" class="form-control-label">الصورة</label>
                <input type="file" class="dropify" name="image" accept="image/png, image/gif, image/jpeg,image/jpg" data-default-file="{{$classification_of_ads->image}}"/>
                <span class="form-text text-danger text-center">مسموح بالصيغ الاتية png, gif, jpeg, jpg</span>
            </div>

        </div>

        <div class="row">
            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">الاسم باللغه العربية</label>
                    <input type="text" class="form-control" name="name_ar" id="name_ar" value="{{$classification_of_ads->name_ar}}">
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">الاسم باللغة الانجليزية</label>
                    <input type="text" class="form-control" value="{{$classification_of_ads->name_en}}" name="name_en" >
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">الاسم باللغة الكردية</label>
                    <input type="text" class="form-control" name="name_ko" value="{{$classification_of_ads->name_ko}}">
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
