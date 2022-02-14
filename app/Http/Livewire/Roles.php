<?php

namespace App\Http\Livewire;

use App\Models\Role;
use App\Traits\PublicFunction;
use Livewire\Component;
use App\Traits\Alert;
class Roles extends Component
{
    use PublicFunction;
    use Alert;
    public $columes;
    public $page_length = 10;
    public $search ,$user_id;
    public $file_name='role';
    public $model_title="";
    public $sortBy="created_at";
    public $sortDirection="desc";
    protected $listeners = ['governorate-livewire:conformDelete' => 'conformDelete'];
    public $form =[
    ];

    public function mount()
    {
            $this->columes =Role::getColumnLang();

        $this->model_title=\Lang::get('lang.add_permission');

        $this->page_length = request()->query('page_length',$this->page_length);
        $this->search = request()->query('search',$this->search);
    }

    public function render()
    {

        $data = Role::query();
        if($this->search){
            $search = $this->search;
            $data->where('name','LIKE',$search);
        }
        $data=$data->orderBy($this->sortBy,$this->sortDirection)->paginate($this->page_length);


        if(in_array('role_show',$this->actions_permission()) ) {
            return view('dashboard.role.index',[ 'data'=>$data])->extends('dashboard_layout.main');
        }else{

            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }
    }


    public function add(){
        $this->form =[
            'name'=>'',
            'status'=>true
        ];
        $this->showDataModel('basic','show');
    }
    public function save(){

        $this->validate([
            'form.name' => 'required']
        );
        $this->showDataModel('basic','hide');

        $create = Role::create($this->form);

    }

    public  function edit($id){
        $id = Role::find($id)->toArray();
        $this->form  =$id ;

        $this->model_title=\Lang::get('lang.edit');
        $this->showDataModel('basic','show');
    }

    public  function update($id){
        $object = Role::find($id);

        $this->validate([
                'form.name' => 'required']
        );
        $this->showDataModel('basic','hide');

        $object->update($this->form);

    }

    public function delete($id){
        $this->showConfirmation(\Lang::get('lang.confirm_delete'),\Lang::get('lang.please_confirm_delete'),'governorate-livewire:conformDelete',['id'=>$id]);
    }

    public function permission($id){

        return redirect( '/dashboard/permission/'.$id.'?user_id=');
    }


    public function conformDelete($id){

        Role::find($id['id'])->delete();

        $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');

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
