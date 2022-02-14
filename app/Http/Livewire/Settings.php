<?php

namespace App\Http\Livewire;

use App\Models\Setting;
use App\Traits\PublicFunction;
use Livewire\Component;
use App\Traits\Alert;
use Livewire\WithFileUploads;
class Settings extends Component
{
    use PublicFunction;
    use WithFileUploads,Alert;
    public $tab = 'account-tab';
    public $setting;
    public $file_name='setting';
    public $website_name,$address_1 ,$address_2,$logo,$favicon,$seo_keywords,$seo_description;
    protected $rules = [
        'website_name' =>'required',
        'setting.email' =>'required',
        'setting.phone' =>'required',
        'setting.mobile_1' =>'required',
        'setting.mobile_2' =>'required',
        'address_1' =>'required',
        'address_2' =>'required',
        'seo_keywords' =>'required',
        'seo_description' =>'required',
        'setting.facebook' =>'required',
        'setting.twitter' =>'required',
        'setting.instagram' =>'required',
        'setting.whatsapp' =>'required',
        'setting.linked_in' =>'required',

    ];
    public function mount($id=null)
    {
        $this->setting = Setting::first();
        $this->website_name = $this->setting ->website_name;
        $this->address_1 = $this->setting ->address_1;
        $this->address_2 = $this->setting ->address_2;
        $this->seo_keywords = $this->setting ->seo_keywords;
        $this->seo_description = $this->setting ->seo_description;

    }

    public function render()
    {

        if(in_array('setting_show',$this->actions_permission()) ) {

            return view('dashboard.setting.index')->extends('dashboard_layout.main');

        }else{
            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }


    }

    public function save(){
        //   dd( $this->setting->website_name);
        $this->validate();
        $logoname = $this->logo?$this->logo->store('/','avatars'):$this->setting->logo;
        $faviconname = $this->favicon?$this->favicon->store('/','avatars'):$this->setting->favicon;
        $this->setting->website_name=$this->website_name;
        $this->setting->address_1=$this->address_1;
        $this->setting->address_2=$this->address_2;
        $this->setting->seo_keywords=$this->seo_keywords;
        $this->setting->seo_description=$this->seo_description;
        $this->setting->logo=$logoname;
        $this->setting->favicon=$faviconname;
        $this->setting->save();

        $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');


    }



}
