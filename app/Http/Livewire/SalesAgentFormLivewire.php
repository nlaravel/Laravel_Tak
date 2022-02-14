<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
use App\Models\SalesAgent;
class SalesAgentFormLivewire extends Component
{
     use WithFileUploads,Alert,PublicFunction;
      public $title = "";
      public $sales_id= "";

      public $file_name = 'salesAgent';

      public $salesAgent;

      public $image;

      protected $listeners = ['SalesAgent-livewire:conformDelete' => 'conformDelete','reviewSectionRefresh' => '$refresh',];

      protected $rules = [
                "salesAgent.image"=>'nullable',
                "salesAgent.name"=>'required',
                "salesAgent.mobile"=>'required',
                "salesAgent.phone"=>'required',
                "salesAgent.email"=>'required',
                "salesAgent.whatsapp"=>'required',

       ];

     protected $validationAttributes;

      public function __construct($id = null)
       {
           parent::__construct($id);
           $this->validationAttributes = $this->getColNameForValidation(SalesAgent::getColumnLang());
       }

      public function mount($id =null)
          {
              $this->title = \Lang::get('lang.add_account')  ;
              $this->salesAgent  = $id?SalesAgent::find($id):new SalesAgent();
              $this->sales_id= $id?SalesAgent::find($id)->id:'';
          }

      public function render()
          {
              return view('dashboard/salesAgent/form')->extends('dashboard_layout.main');
          }

      public function save(){

              $this->validate();


           \DB::beginTransaction();
           try {
               $this->salesAgent->image=$this->image?$this->image->store('/','sales_agent'): $this->salesAgent->image;
               $this->salesAgent->save();
                \DB::commit();
               $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');
               return redirect()->route('dashboard.salesAgent');
            } catch (\Exception $e) {
                    \DB::rollback();
                    $this->showModal('حصل خطأ ما',$e->getMessage(),'error');
            }
       }

}


