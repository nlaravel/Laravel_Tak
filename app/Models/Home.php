<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Home extends Model
{
    use SoftDeletes;
 protected $guarded = [];
    protected $appends=['image_url'];
    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function salesAgent()
    {
        return $this->belongsTo(SalesAgent::class);
    }

    public  static function  getColumnLang(){
 	 	$columes=[
 	 	'title'=>[\Lang::get('home.title') ,1,true,false,[]],
 	 	'description'=>[\Lang::get('home.description') ,1,false,false,[]],
 	 	'city_id'=>[\Lang::get('home.city_id') ,1,true,false,[]],
 	 	'sales_agent_id'=>[\Lang::get('home.sales_agent_id') ,1,true,false,[]],
 	 	'bedroom_count'=>[\Lang::get('home.bedroom_count') ,1,false,false,[]],
 	 	'bathroom_count'=>[\Lang::get('home.bathroom_count') ,1,false,false,[]],
 	 	   'actions'=>['الخيارات',5,true,false,['edit','delete']],
 	 	];
 	 	 return $columes;
  }
 	 	  public static function getSearchable(){
 	 	$columes=[
 	 	    'title'=>[\Lang::get('home.title')],
 	 	    'description'=>[\Lang::get('home.description')],
 	 	'city_id'=>[\Lang::get('home.city_id'),['type'=>'select','name'=>'name','value'=>'id','model'=>'city']],
 	 	'sales_agent_id'=>[\Lang::get('home.sales_agent_id'),['type'=>'select','name'=>'name','value'=>'id','model'=>'sales_agents']],
 	 	
 	 	 ]; return $columes;
  }
 	 	public function scopeSearch($query, $data) {
 	 	 if(isset($data["title"])){
 	 	   $query->where("title","LIKE","%".$data["title"]."%");}
 	 	 if(isset($data["description"])){
 	 	   $query->where("description","LIKE","%".$data["description"]."%");}
 	 	 if(isset($data["city_id"])){
 	 	   $query->where("city_id","LIKE","%".$data["city_id"]."%");}
 	 	 if(isset($data["sales_agent_id"])){
 	 	   $query->where("sales_agent_id","LIKE","%".$data["sales_agent_id"]."%");}
 	 	 if(isset($data["bedroom_count"])){
 	 	   $query->where("bedroom_count","LIKE","%".$data["bedroom_count"]."%");}
 	 	 if(isset($data["bathroom_count"])){
 	 	   $query->where("bathroom_count","LIKE","%".$data["bathroom_count"]."%");}
 	 	 return $query ;
 	 	 }

    public function getImageUrlAttribute(){

        if($this->home_images->isNotEmpty()){
            $there_main= HomeImage::where('is_main',true)
                ->where('home_id',$this->id)->orderBy('created_at','desc')
                ->first();
        }else{
            return \App\Models\Setting::first()?\App\Models\Setting::first()->logo_url:null;
        }
    }




    public function home_images()
    {
        return $this->hasMany(HomeImage::class);
    }

    public function home_rooms()
    {
        return $this->hasMany(HomeRoom::class);
    }
}