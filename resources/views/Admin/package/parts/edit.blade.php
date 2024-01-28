    <form id="updateForm" method="POST" enctype="multipart/form-data" action="{{ route('package.update',$package->id)}}" >
    @csrf
        @method('PUT')
        <input type="hidden" name="id" value="{{$package->id}}">
        <div class="row">
            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">نوع الباقه</label>
                    <input type="text" class="form-control" name="type" value="{{$package->type}}">
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">عدد الايام</label>
                    <input type="number" class="form-control" name="number_of_days" value="{{$package->number_of_days}}">
                </div>
            </div>

            <div class="col-6">
                <div class="form-group">
                    <label for="link" class="form-control-label">السعر</label>
                    <input type="number" class="form-control" name="price" value="{{$package->price}}">
                </div>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
            <button type="submit" class="btn btn-success" id="updateButton">تعديل</button>
        </div>
    </form>
    <script>
        $('.dropify').dropify();

    </script>
