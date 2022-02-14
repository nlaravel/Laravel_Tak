<?php

namespace App\Http\Livewire;

use App\Models\Facilites;
use App\Models\HomeImage;
use App\Models\HomeRoom;
use Livewire\Component;
use App\Traits\PublicFunction;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Traits\Alert;
use App\Models\Home;
class HomeFormLivewire extends Component
{
     use WithFileUploads,Alert,PublicFunction;
      public $title = "";
      public $file_name = 'home';
      public $home;
    public $image_main=null;
      public $i=0;
      public $image;
    public $images = [['image'=>null]];
    public $inputs = [['image'=>'','image_url'=>null,'is_main'=>'']];
    public $facilities_inputs = [['name'=>'']];
    public $room_inputs = [['name'=>'','size'=>null,'price'=>'']];
      protected $listeners = ['Home-livewire:conformDelete' => 'conformDelete','reviewSectionRefresh' => '$refresh',];
       protected $rules = [

                "home.title"=>'nullable',
                "home.description"=>'nullable',
                "home.city_id"=>'nullable',
                "home.sales_agent_id"=>'nullable',
                "home.bedroom_count"=>'nullable',
                "home.bathroom_count"=>'nullable',

       ];

       protected $validationAttributes;
       public function __construct($id = null)
       {
           parent::__construct($id);
           $this->validationAttributes = $this->getColNameForValidation(Home::getColumnLang());
       }
      public function mount($id =null)
          {
              $this->title = \Lang::get('lang.add_account')  ;
              $this->home  = $id?Home::find($id):new Home();

              $image_result = array();
              $images_array =$id?HomeImage::where('home_id',$id)->get()->toArray():[];

              foreach ($images_array as $key => $value) {
                  $id =$key;
                  if (!isset($image_result[$id])) {
                      $image_result[$id] = [];
                  }

                  $image_result[$id]['image'] =$value['image'];
                  $image_result[$id]['image_url'] =$value['image_url'];
                  $image_result[$id]['is_main'] =$value['is_main'];


              }

              $this->inputs= $image_result;


              // room
              $room_result = array();
              $rooms_array =$id?HomeRoom::where('home_id',$id)->get()->toArray():[];

              foreach ($rooms_array as $key => $value) {
                  $id =$key;
                  if (!isset($room_result[$id])) {
                      $room_result[$id] = [];
                  }

                  $room_result[$id]['name'] =$value['name'];
                  $room_result[$id]['size'] =$value['size'];
                  $room_result[$id]['price'] =$value['price'];


              }

              $this->room_inputs= $room_result;

              $this->inputs= $image_result;

              // facilities
              $facilities_result = array();
              $facilities_array =$id?Facilites::where('home_id',$id)->get()->toArray():[];

              foreach ($facilities_array as $key => $value) {
                  $id =$key;
                  if (!isset($facilities_result[$id])) {
                      $facilities_result[$id] = [];
                  }

                  $facilities_result[$id]['name'] =$value['name'];

              }

              $this->facilities_inputs= $facilities_result;
          }
      public function render()
          {
              return view('dashboard/home/form')->extends('dashboard_layout.main');
          }
    public function add()
    {

        $values=['image'=>'','image_url'=>null,'is_main'=>''];
        $image_values=['image'=>'',];
        $this->inputs[]=$values;
        $this->images[]=$image_values;

    }

    public function add_rooms()
    {

        $values=['name'=>'','size'=>null,'price'=>''];

        $this->room_inputs[]=$values;


    }
    public function add_Facilites()
    {

        $values=['name'=>''];

        $this->facilities_inputs[]=$values;


    }

    public function remove_room($i)
    {

        unset($this->room_inputs[$i]);


        $this->room_inputs = array_values($this->room_inputs);

    }
    public function remove_Facilites($i)
    {

        unset($this->facilities_inputs[$i]);


        $this->facilities_inputs = array_values($this->facilities_inputs);

    }

    public function remove($i)
    {

        unset($this->inputs[$i]);
        unset($this->images[$i]);

        $this->inputs = array_values($this->inputs);
        $this->images = array_values($this->images);
    }
      public function save(){
            $this->validate();
           \DB::beginTransaction();
           try {

               $this->home->save();
               // store image
               if($this->inputs){
                   \App\Models\HomeImage::where('home_id' ,$this->home->id)->delete();
                   foreach ($this->inputs as $key=>$input){
                       $file_name= $this->images[$key]['image']? $this->images[$key]['image']->store('/','homes'):$input['image'];
                       HomeImage::create([
                           'home_id'=>$this->home->id,
                           'is_main'=>$input['is_main']===true?"1":"0",
                           'image'=>$file_name,
                       ]);

                   }
               }

               // store room and price
               if($this->room_inputs){
                   \App\Models\HomeRoom::where('home_id' ,$this->home->id)->delete();
                   foreach ($this->room_inputs as $room_key=>$room){

                       HomeRoom::create([
                           'home_id'=>$this->home->id,
                           'name'=>$room['name'],
                           'size'=>$room['size'],
                           'price'=>$room['price'],

                       ]);

                   }
               }

               // store facilities_inputs
               if($this->facilities_inputs){
                   \App\Models\Facilites::where('home_id' ,$this->home->id)->delete();
                   foreach ($this->facilities_inputs as $facilitY_key=>$facilitY){

                       Facilites::create([
                           'home_id'=>$this->home->id,
                           'name'=>$facilitY['name'],

                       ]);

                   }
               }

                \DB::commit();
               $this->showModal(\Lang::get('lang.saved_done'),\Lang::get('lang.saved_changed'),'success');
               return redirect()->route('dashboard.home');
            } catch (\Exception $e) {
                    \DB::rollback();
                    $this->showModal('حصل خطأ ما',$e->getMessage(),'error');
            }
       }






}


