<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
use App\Models\City;
class CityFormLivewire extends Component
{
     use WithFileUploads,Alert,PublicFunction;
      public $title = "";
      public $file_name = 'city';
      public $city;
      public $image;
      protected $listeners = ['City-livewire:conformDelete' => 'conformDelete','reviewSectionRefresh' => '$refresh',];
       protected $rules = [
                "city.name"=>' required',
       ];

       protected $validationAttributes;
       public function __construct($id = null)
       {
           parent::__construct($id);
           $this->validationAttributes = $this->getColNameForValidation(City::getColumnLang());
       }
      public function mount($id =null)
          {
              $this->title = \Lang::get('lang.add_account')  ;
              $this->city  = $id?City::find($id):new City();
          }
      public function render()
          {
              return view('dashboard/city/form')->extends('dashboard_layout.main');
          }

      public function save(){
            $this->validate();
           \DB::beginTransaction();
           try {
               $this->city->save();
                \DB::commit();
               $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');
               return redirect()->route('dashboard.city');
            } catch (\Exception $e) {
                    \DB::rollback();
                    $this->showModal('حصل خطأ ما',$e->getMessage(),'error');
            }
       }

}


