<div>
    <div  wire:ignore.self class="modal fade" id="translation" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document" style="max-width: 900px;">
            <div class="modal-content">
                <form action="#">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel1">Translation Form</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="height: 500px; ">

                        @foreach($arrLabel as $label => $value)
                            <div class="col-lg-6">
                                <div class="form-group mb-3">
                                    <label>{{$label}}</label>
                                    <input type="text" class="form-control" name="label[{{$label}}]" value="{{$value}}">
                                </div>
                            </div>
                        @endforeach
                        @foreach($arrMessage as $fileName => $fileValue)

                            <div class="row">
                                <div class="col-lg-12">
                                    <h3>{{ucfirst($fileName)}} Page </h3>
                                </div>

                                @foreach($fileValue as $label => $value)

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>{{$label}}</label>
                                                <input type="text" class="form-control"   wire:model.defer="arrMessage.{{$fileName}}.{{$label}}">

                                            </div>
                                        </div>
                                @endforeach
                            </div>
                        @endforeach
                    </div>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-primary" wire:click="storeLangData('{{app()->getLocale()}}')">حفظ التغييرات</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>