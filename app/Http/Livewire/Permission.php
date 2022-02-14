<?php

namespace App\Http\Livewire;

use App\Models\ActionRole;
use App\Models\Role;
use App\Traits\PublicFunction;
use Livewire\Component;
use App\Traits\Alert;
class Permission extends Component
{
    use Alert;
    use PublicFunction;
    public $role,$rolePermissions,$permission,$user_id;

    public $permisions=[

        'setting_show'=>true,
//        'settings_edit'=>false,
//
//        'role_show'=>false,
//        'role_create'=>false,
//        'role_edit'=>false,
//        'role_delete'=>false,
//
//        'permission_show'=>false,
//        'permission_edit'=>false,
//
//        'user_management_show'=>false,
//        'user_management_create'=>false,
//        'user_management_edit'=>false,
//        'user_management_delete'=>false,
//
//        'gallary_banner_show'=>false,
//        'gallary_banner_create'=>false,
//        'gallary_banner_edit'=>false,
//        'gallary_banner_delete'=>false ,
//
//        'categories_show'=>false,
//        'categories_create'=>false,
//        'categories_edit'=>false,
//        'categories_delete'=>false ,
//
//        'sliders_show'=>false,
//        'sliders_create'=>false,
//        'sliders_edit'=>false,
//        'sliders_delete'=>false ,
//
//        'page_show'=>false,
//        'page_create'=>false,
//        'page_edit'=>false,
//        'page_delete'=>false ,
//
//        'brands_show'=>false,
//        'brands_create'=>false,
//        'brands_edit'=>false,
//        'brands_delete'=>false ,

    ];

    public function mount($id = null)
    {

        $request_link= \Request::fullUrl();
        $request_link = explode("=",$request_link);
        $this->user_id=$request_link[1]?$request_link[1]:null;

        $this->role = $id?Role::find($id):null;

         $this->getPermisions($id);

    }

    public function render()
    {

        if(in_array('permission_show',$this->actions_permission())){
            return view('dashboard.role.permission')->extends('dashboard_layout.main');
        }else{
            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }


    }

    public function save(){
       // dd($this->permisions );
        if($this->user_id){

            ActionRole::where('role_id',$this->role->id)->where('user_id',$this->user_id)->delete();

        }
        else {
            ActionRole::where('role_id',$this->role->id)->whereNull('user_id')->delete();;
        }

        foreach ($this->permisions as $key=>$value){
            if($value){
                if($this->user_id) {
                    ActionRole::create([
                        'role_id'=>$this->role->id,
                        'user_id'=>$this->user_id,
                        'name'=>$key
                    ]);
                }else{
                    ActionRole::create([
                        'role_id'=>$this->role->id,
                        'name'=>$key
                    ]);
                }

            }


        }
        $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');

    }


    public function getPermisions($id){

        if($this->user_id){

            $actions =  ActionRole::where('user_id',$this->user_id)->get()->pluck('name')->toArray();
            if (empty($actions)) {
                $actions = ActionRole::where('role_id', $id)->whereNull('user_id')->get()->pluck('name')->toArray();
            }


        }else {

            $actions = ActionRole::where('role_id', $id)->whereNull('user_id')->get()->pluck('name')->toArray();

        }

        foreach ($actions as $action){
          //   dd($this->permisions[$action],);
            if(in_array($action,$this->permisions)){

                $this->permisions[$action]=true;
            }
        }
    }







}
