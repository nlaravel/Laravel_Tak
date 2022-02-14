<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
class ModelLivewire extends Component
{
 use WithFileUploads,Alert,PublicFunction,WithPagination;

 public $file;

       public function render()
       {

           $currantLang=app()->getLocale();
           $dir = base_path() . '/resources/lang/' . $currantLang;
           if(!empty($currantLang))
           {
               $dir = base_path() . '/resources/lang/' . $currantLang;
               if(!is_dir($dir))
               {
                   $dir = base_path() . '/resources/lang/en';
               }
           }
           else
           {
               $currantLang = config('setting.DEFAULT_LANG') ?? 'en';
               $dir         = base_path() . '/resources/lang/' . $currantLang;
           }

           $this->arrLabel = [];
          // $arrLabel = json_decode(file_get_contents($dir . '.json'));

           $arrFiles   = array_diff(
               scandir($dir), array(
                   '..',
                   '.',
               )
           );
           $this->arrMessage = [];

           foreach($arrFiles as $file)
           {


               $fileName = basename($file, ".php");

                if( $fileName === $this->file){
                    $fileData = $myArray = include $dir . "/" . $file;

                    if(is_array($fileData))
                    {
                        $this->arrMessage[$fileName] = $fileData;
                        return view('livewire.model-livewire',['file_name'=>$this->file])->extends('dashboard_layout.main');
                    }
                }

           }


       }
   }

