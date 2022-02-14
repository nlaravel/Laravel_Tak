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
                                    <i class="feather icon-user mr-25"></i><span class="d-none d-sm-block">@lang('salesAgent.model_name')</span>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">

                                <!-- users edit account form start -->
                                <form id="profile_update" >

                                   <div class="row">


 	 	 	 	 	 		 		 <div class="col-12 col-sm-6" >
 	 	 	 	 	 		 			 	<x-input.normal name="salesAgent.name" title="{{__('salesAgent.name')}}" type="text"></x-input.normal>

 	 	 	 	 	 		 			 	<x-input.normal name="salesAgent.mobile" title="{{__('salesAgent.mobile')}}" type="text"></x-input.normal>

 	 	 	 	 	 		 			 	<x-input.normal name="salesAgent.phone" title="{{__('salesAgent.phone')}}" type="text"></x-input.normal>

 	 	 	 	 	 		 			 	<x-input.normal name="salesAgent.email" title="{{__('salesAgent.email')}}" type="text"></x-input.normal>
 	 	 	 	 	 		 			 	<x-input.normal name="salesAgent.whatsapp" title="{{__('salesAgent.whatsapp')}}" type="text"></x-input.normal>
 	 	 	 	 	 		 		</div>
                                    <div class="col-12 col-sm-6">
                                           <h4 class="text-center">{{__('salesAgent.image')}}</h4>
                                           <div class="upload-btn-wrapper mx-auto">
                                               <div class="upload-btn">
                                                   @if($image)
                                                       <img src="{{$image->temporaryUrl()}}">
                                                   @else
                                                       <img src="{{$salesAgent->image_url}}">
                                                   @endif


                                               </div>
                                               <input type="file" class="profile-img-input"  id="image"   wire:model="image">

                                           </div>
 	 	 	 	 	 		 			 


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

