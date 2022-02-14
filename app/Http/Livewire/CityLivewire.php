<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
use App\Models\City;
class CityLivewire extends Component
{
     use WithFileUploads,Alert,PublicFunction,WithPagination;
        public $columes;
        public $searchable;
        public $page_length = 10;
        public $sortBy="created_at";
        public $sortDirection="desc";
        protected $paginationTheme = 'bootstrap';
        public  $search_array=[];
        protected $listeners = ['City-livewire:conformDelete' => 'conformDelete','reviewSectionRefresh' => '$refresh',];
        public $file_name = 'city';
        public function mount()
            {
                $searchable = City::getSearchable();
                $this->searchable =collect($searchable);
                $this->columes =City::getColumnLang();
                $this->searchable =City::getSearchable();
                $this->page_length = request()->query('page_length',$this->page_length);
            }


        public function render()
           {
               $data =City::search($this->search_array);
               $data=$data->orderBy($this->sortBy,$this->sortDirection)->paginate($this->page_length);

               if(in_array('city_show',$this->actions_permission()) ) {
                    return view('dashboard/city/index',[ 'data'=>$data])->extends('dashboard_layout.main');
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
                 return redirect()->route('dashboard.city.edit',$id);
             }

             public function delete($id){
                 $this->showConfirmation(\Lang::get('lang.confirm_delete'),\Lang::get('lang.please_confirm_delete'),'City-livewire:conformDelete',['id'=>$id]);
             }

             public function conformDelete($id){

                 City::find($id['id'])->delete();

                 $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');

             }
}

