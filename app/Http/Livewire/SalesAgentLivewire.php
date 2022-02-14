<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
use App\Models\SalesAgent;
class SalesAgentLivewire extends Component
{
     use WithFileUploads,Alert,PublicFunction,WithPagination;
        public $columes;
        public $searchable;
        public $page_length = 10;
        public $sortBy="created_at";
        public $sortDirection="desc";
        protected $paginationTheme = 'bootstrap';
        public  $search_array=[];
        protected $listeners = ['SalesAgent-livewire:conformDelete' => 'conformDelete','reviewSectionRefresh' => '$refresh',];
        public $file_name = 'salesAgent';
        public function mount()
            {
                $searchable = SalesAgent::getSearchable();
                $this->searchable =collect($searchable);
                $this->columes =SalesAgent::getColumnLang();
                $this->searchable =SalesAgent::getSearchable();
                $this->page_length = request()->query('page_length',$this->page_length);
            }


        public function render()
           {
               $data =SalesAgent::search($this->search_array);
               $data=$data->orderBy($this->sortBy,$this->sortDirection)->paginate($this->page_length);

               if(in_array('salesAgent_show',$this->actions_permission()) ) {
                    return view('dashboard/salesAgent/index',[ 'data'=>$data])->extends('dashboard_layout.main');
               }else{
                    return view('dashboard.not-authorized')->extends('dashboard_layout.main');
               }

           }

        public function search(){
                    $this->resetPage();
        }
         public function resetSearch(){
            $this->search_array=[];
         }

            public function edit($id){
                 return redirect()->route('dashboard.salesAgent.edit',$id);
             }

             public function delete($id){
                 $this->showConfirmation(\Lang::get('lang.confirm_delete'),\Lang::get('lang.please_confirm_delete'),'SalesAgent-livewire:conformDelete',['id'=>$id]);
             }

             public function conformDelete($id){

                 SalesAgent::find($id['id'])->delete();

                 $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');

             }
}

