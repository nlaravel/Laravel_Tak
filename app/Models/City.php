<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{

 protected $guarded = [];
 public  static function  getColumnLang(){
 	 	$columes=[
 	 	'name'=>[\Lang::get('city.name') ,1,true,false,[]],
 	 	   'actions'=>['الخيارات',0,true,false,['edit','delete']],
 	 	];
 	 	 return $columes;
  }
 	 	public static function getSearchable(){
 	 	$columes=['name'=>[\Lang::get('city.name')],
 	 	
 	 	 ]; return $columes;
  }
 	 		 public function scopeSearch($query, $data) {
 	 	 if(isset($data["name"])){
 	 	   $query->where("name","LIKE","%".$data["name"]."%");}
 	 	 return $query ;
 	 	 }
 	 	 
}