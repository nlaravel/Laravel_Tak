<?php

namespace App\Http\Livewire;

use App\Models\User;
use App\Traits\PublicFunction;
use Livewire\Component;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Hash;
use App\Traits\Alert;

class UserManagementForm extends Component
{
    use WithFileUploads,Alert,PublicFunction;
    public $title = "";
    public $avatar = null;

    public $user=[
        'name'=>'',
        'email'=>'',
        'password'=>'',
        'role_id'=>'',
        'avatar'=>'https://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e',
    ];


    public function mount($id =null)
    {

        $this->title = \Lang::get('lang.add_account')  ;
        $user =  User::find($id);
        $this->user  = $id?User::find($id)->toArray():[
            'name'=>'',
            'email'=>'',
            'password'=>'',
            'role_id'=>'',
            'avatar'=>'https://www.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e',
        ];
        $this->user['password']=null;

        if($id){
            $this->user['avatar']=$user->avatarUrl();

                $this->title = \Lang::get('lang.edit_account')  ;

        }

    }

    public function render()
    {
        if(in_array('user_management_create'||'user_management_edit',$this->actions_permission()) ) {
            return view('dashboard.user_managements.form')->extends('dashboard_layout.main');
        }else{
            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }


    }

    public function save(){

    $filename = $this->avatar?$this->avatar->store('/','avatars'):null;
    $user = User::create([
        'email'=>$this->user['email'],
        'name'=>$this->user['name'],
        'password'=>  Hash::make($this->user['password']),
        'avatar' =>$filename,
        'role_id' =>$this->user['role_id'],
    ]);

    $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');
    return redirect()->route('dashboard.user_management');
}


    public function update($id){
        $user =  User::find($id);
        $this->validate(
            [
                'user.email' => 'required',
                'user.name' => 'required',
                'user.role_id'=>'required'
            ] );

        $filename = $this->avatar?$this->avatar->store('/','avatars'):$user->avatar;
        $user->email = $this->user['email'];
        $user->name = $this->user['name'];
        $user->role_id = $this->user['role_id'];
        $user->avatar = $filename;
        if($this->user['password']){
            $user->password=Hash::make($this->user['password']);
          }
        $user->save();
        $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');
    }




}
