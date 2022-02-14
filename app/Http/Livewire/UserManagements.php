<?php

namespace App\Http\Livewire;

use App\Models\User;
use App\Traits\PublicFunction;
use Livewire\Component;
use App\Traits\Alert;
class UserManagements extends Component
{
    use Alert;
    use PublicFunction;
    public $columes;
    public $page_length = 10;
    public $search;
    public $model_title="";
    public $sortBy="created_at";
    public $sortDirection="desc";
    public $file_name='user';
    protected $listeners = ['governorate-livewire:conformDelete' => 'conformDelete'];

    public function mount()
    {

        $this->columes =User::getColumnLang();

        $this->page_length = request()->query('page_length',$this->page_length);
        $this->search = request()->query('search',$this->search);
    }

    public function render()
    {
        $data = User::query();
        if($this->search){
            $search = $this->search;
        }
        $data=$data->orderBy($this->sortBy,$this->sortDirection)->paginate($this->page_length);


        if(in_array('user_show',$this->actions_permission()) ) {
            return view('dashboard.user_managements.index',['data'=>$data, ])->extends('dashboard_layout.main');
        }else{
            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }
    }

    public function edit($id){
        return redirect()->route('dashboard.user_management.edit',$id);
    }

    public function delete($id){
        $this->showConfirmation(\Lang::get('lang.confirm_delete'),\Lang::get('lang.please_confirm_delete'),'governorate-livewire:conformDelete',['id'=>$id]);
    }

    public function conformDelete($id){

        User::find($id['id'])->delete();

        $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');

    }

    public function permission($id){
        $role_id=User::find($id);

        return redirect( '/dashboard/permission/'.$role_id->role_id.'?user_id='.$id);

    }
    public function sortBy($field){
        if($this->sortDirection =="desc"){
            $this->sortDirection='asc';
        }else{
            $this->sortDirection='desc';
        }

        return $this->sortBy = $field;
    }

    public function search(){
        $this->resetPage();
    }

    public function resetSearch(){
        $this->search_array=[];
    }
}
