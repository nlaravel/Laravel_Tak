@push('style')
    <link rel="stylesheet" type="text/css" href="{{asset('admin-layout/app-assets/css/pages/app-ecommerce-shop.css')}}">
    <style>
        #wishlist .card, .card .card {
            box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%) !important;
        }
        .img-upload{
            display: inline-block;
            position: relative;
            height: 63px;
            width: 63px;
            box-shadow: 0px 5px 15px 0px rgba(0,0,0,0.25);
            border-radius: 50%;
            cursor: pointer;
            margin-bottom: 15px;
        }
        .img-upload img{
            width: 100%;
            height: 100%;
            border-radius: 50%;
        }
        .img-upload .uploader{
            position: absolute;
            top: 0px;
            right: 0px;
            height: 63px;
            width: 63px;
            border-radius: 50%;
            opacity: 0;
            cursor: pointer;
        }
        .upload-edit{
            position: absolute;
            bottom: 0px;
            left: 0px;
            width: 20px;
            height: 20px;
            line-height: 20px;
            text-align: center;
            color: #fff;
            background-color: #3cec6a;
            border-radius: 50%;
            font-size: 11px;
        }
    </style>
@endpush
<div>
    <div class="content-header row">
        <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
                <div class="col-12">
                    <h2 class="content-header-title float-left mb-0"></h2>
                </div>
            </div>
        </div>
        <div class="content-header-right text-md-right col-md-3 col-12 d-md-block d-none">
            <div class="form-group breadcrum-right">
                <button class="btn-icon btn btn-primary btn-round btn-sm dropdown-toggle" type="button"
                        wire:click="open_model('{{app()->getLocale()}}')" >
                    <i class="fa fa-language"></i>
                </button>
            </div>
        </div>

        <livewire:model-livewire :file="$file_name"  />
    </div>
    <div class="content-body">
        <!-- users edit start -->
        <section class="users-edit">
            <div class="card">
                <div class="card-content">
                    <div class="card-body">
                        <ul class="nav nav-tabs mb-3" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center active" id="account-tab" data-toggle="tab" href="#account" aria-controls="account" role="tab" aria-selected="true">
                                    <i class="feather icon-file mr-25"></i><span class="d-none d-sm-block">@lang('home.model_name')</span>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">

                                <!-- users edit account form start -->
                                <form id="profile_update" >

                                   <div class="row">


                                       <div class="col-12 mt-0">
                                           <div class="card">
                                               <div class="card-header">
                                                   <h4 class="mb-0">اضافة الصور  </h4>
                                                   <button wire:click="add()" type="button" class="btn btn-outline-success waves-effect waves-light deletefile"> اضافة  <i class="feather icon-plus"></i></button>
                                               </div>
                                               <div class="card-content">
                                                   <div class="table-responsive mt-1">
                                                       <table class="table table-hover-animation mb-0">
                                                           <thead>
                                                           <tr>
                                                               <th>الصورة</th>
                                                               <th>تعيين ك cover image </th>

                                                               <th> الاجراءات</th>

                                                           </tr>
                                                           </thead>
                                                           <tbody>
                                                           @foreach($inputs  as $key =>$value)
                                                               <tr>

                                                                   <td>

                                                                       <div class="img-upload mr-2">

                                                                           @if(isset($images[$key]))
                                                                               @if($images[$key]['image'])


                                                                                   <img src="{{$images[$key]['image']?$images[$key]['image']->temporaryUrl():asset('images/upload.png')}}" alt="" id="output{{$key}}">
                                                                               @else
                                                                                   <img src="{{$inputs[$key]['image_url']?$inputs[$key]['image_url']:asset('images/upload.png')}}" alt="" id="output{{$key}}">
                                                                               @endif
                                                                           @else
                                                                               <img src="{{$inputs[$key]['image_url']?$inputs[$key]['image_url']:asset('images/upload.png')}}" alt="" id="output{{$key}}">
                                                                           @endif
                                                                           <input type="file" class="uploader" wire:model="images.{{$key}}.image" >

                                                                           <div class="upload-edit"><i class="far fa-edit"></i></div>
                                                                           <div wire:loading wire:target="images.{{$key}}.image"  class="upload-edit"><i class="fas fa-spinner fa-spin"></i></div>


                                                                       </div>


                                                                   </td>
                                                                   <td>
                                                                       <x-input.checkbox index="inputs.{{$key}}" is_checked="{{$inputs[$key]['is_main'] ?'true':'false'}}" name="inputs.{{$key}}.is_main"     wire:model="inputs.{{$key}}.is_main" wire></x-input.checkbox></td>

                                                                   <td>
                                                                       <button type="button"  wire:click="remove({{$key}})" class="btn btn-outline-danger waves-effect waves-light deletefile"> حذف<i class="feather icon-trash"></i></button>

                                                                   </td>

                                                               </tr>

                                                           @endforeach



                                                           </tbody>
                                                       </table>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                        <div class="col-12 col-sm-6" >
 	 	 	 	 	 		 			 	<x-input.normal name="home.title" title="{{__('home.title')}}" type="text"></x-input.normal>
                                            <x-input.select  wire:model.defer="home.sales_agent_id"
                                                             value="name"
                                                             :options="\App\Models\SalesAgent::all()"
                                                             name="home.sales_agent_id"
                                                             title="{{__('home.sales_agent_id')}}">
                                            </x-input.select>
                                            <x-input.normal name="home.bathroom_count" title="{{__('home.bathroom_count')}}" type="text"></x-input.normal>

                                        </div>
                                       <div class="col-12 col-sm-6">
                                           <x-input.select  wire:model.defer="home.city_id"
                                                                 value="name"
                                                                 :options="\App\Models\city::all()"
                                                                 name="home.city_id"
                                                                 title="{{__('home.city_id')}}">
                                           </x-input.select>
                                           <x-input.normal name="home.bedroom_count" title="{{__('home.bedroom_count')}}" type="text"></x-input.normal>

                                       </div>

                                       <div class="col-12 mt-0">
                                           <div class="card">
                                               <div class="card-header">
                                                   <h4 class="mb-0">اضافة الغرف وأسعارها </h4>
                                                   <button wire:click="add_rooms()" type="button" class="btn btn-outline-success waves-effect waves-light deletefile"> اضافة  <i class="feather icon-plus"></i></button>
                                               </div>
                                               <div class="card-content">
                                                   <div class="table-responsive mt-1">
                                                       <table class="table table-hover-animation mb-0">
                                                           <thead>
                                                           <tr>
                                                               <th>الغرفة</th>
                                                               <th> الحجم  </th>
                                                               <th> السعر</th>
                                                               <th> الاجراءات</th>

                                                           </tr>
                                                           </thead>
                                                           <tbody>
                                                           @foreach($room_inputs  as $room_key =>$room)
                                                               <tr>

                                                                   <td>

                                                                       <x-input.normal    name="room_inputs.{{$room_key}}.name" title="الاسم"  class="form-control" ></x-input.normal>
                                                                   </td>
                                                                   <td>
                                                                       <x-input.normal    name="room_inputs.{{$room_key}}.size" title="الحجم"  class="form-control" ></x-input.normal>

                                                                   </td>
                                                                   <td>
                                                                       <x-input.normal    name="room_inputs.{{$room_key}}.price" title="السعر"  class="form-control" ></x-input.normal>

                                                                   </td>

                                                                   <td>
                                                                       <button type="button"  wire:click="remove_room({{$room_key}})" class="btn btn-outline-danger waves-effect waves-light deletefile"> حذف<i class="feather icon-trash"></i></button>

                                                                   </td>

                                                               </tr>

                                                           @endforeach



                                                           </tbody>
                                                       </table>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>

                                       <div class="col-12 mt-0">
                                           <div class="card">
                                               <div class="card-header">
                                                   <h4 class="mb-0">اضافة الخدمات </h4>
                                                   <button wire:click="add_Facilites()" type="button" class="btn btn-outline-success waves-effect waves-light deletefile"> اضافة  <i class="feather icon-plus"></i></button>
                                               </div>
                                               <div class="card-content">
                                                   <div class="table-responsive mt-1">
                                                       <table class="table table-hover-animation mb-0">
                                                           <thead>
                                                           <tr>
                                                               <th>الخدمة</th>

                                                               <th> الاجراءات</th>

                                                           </tr>
                                                           </thead>
                                                           <tbody>
                                                           @foreach($facilities_inputs  as $facility_key =>$facility)
                                                               <tr>

                                                                   <td>

                                                                       <x-input.normal    name="facilities_inputs.{{$facility_key}}.name" title="الاسم"  class="form-control" ></x-input.normal>
                                                                   </td>


                                                                   <td>
                                                                       <button type="button"  wire:click="remove_Facilites({{$facility_key}})" class="btn btn-outline-danger waves-effect waves-light deletefile"> حذف<i class="feather icon-trash"></i></button>

                                                                   </td>

                                                               </tr>

                                                           @endforeach



                                                           </tbody>
                                                       </table>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>

                                       <div class="col-12 col-sm-8" >
                                           <x-input.tinyeditor name="home.description"  title="{{__('home.description')}}" id="description"></x-input.tinyeditor>
                                       </div>








                                    </div>
                                    <div class="col-12 d-flex flex-sm-row flex-column justify-content-end mt-1">
                                        <x-button  wire:click="save" class="btn btn-primary glow mb-1 mb-sm-0 mr-0 mr-sm-1" title="{{__('lang.save')}}"></x-button>
                                    </div>
                                </form>
                                <!-- users edit account form ends -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

