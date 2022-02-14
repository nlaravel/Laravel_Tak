<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Illuminate\Filesystem\Filesystem;
use Livewire\WithFileUploads;
use App\Traits\Alert;
class TranslationForm extends Component
{
    use WithFileUploads,Alert,PublicFunction;
    public $title = "";
    public $label = "";
    public $message = "";
    //lang
    public $currantLang =null;



    public function render()
    {
        $this->types=[['value_id'=>'string','value'=>'string' ,'id'=>'string','name'=>'string'],
            ['value_id'=>'text','value'=>'text' ,'id'=>'text','name'=>'text'],
        ];
       // $this->types=
        if(in_array('user_management_create'||'user_management_edit',$this->actions_permission()) ) {
            return view('dashboard.translation.form')->extends('dashboard_layout.main');
        }else{
            return view('dashboard.not-authorized')->extends('dashboard_layout.main');
        }


    }

    public function create_new_lang_directory()
    {

        $Filesystem = new Filesystem();
        $langCode   = strtolower($this->currantLang);

        $langDir = base_path() . '/resources/lang/';
        $dir     = $langDir;

        $dir      = $dir . $langCode;


        if(!is_dir($dir))
        {
            mkdir($dir);
            chmod($dir, 0777);
        }
        $Filesystem->copyDirectory($langDir . "en", $dir . "/");
    }




}
