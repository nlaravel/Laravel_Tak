<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesAgent extends Model
{

 protected $guarded = [];
    protected $appends=['image_url'];

    public function getImageUrlAttribute(){
        return $this->image ?asset('storage/sales_agent/' . $this->image):'https://www.gravatar.com/avatar/'.md5(strtolower(trim($this->image)));
    }
 public  static function  getColumnLang(){
 	 	$columes=[
 	 	'image'=>[\Lang::get('salesAgent.image') ,1,true,false,[]],
 	 	'name'=>[\Lang::get('salesAgent.name') ,1,true,false,[]],
 	 	'mobile'=>[\Lang::get('salesAgent.mobile') ,1,true,false,[]],
 	 	'phone'=>[\Lang::get('salesAgent.phone') ,1,true,false,[]],
 	 	'email'=>[\Lang::get('salesAgent.email') ,1,true,false,[]],
 	 	   'actions'=>['الخيارات',4,true,false,['edit','delete']],
 	 	];
 	 	 return $columes;
  }
 	 	public static function getSearchable(){

 	 	$columes=[
 	 	'name'=>[\Lang::get('salesAgent.name')],
 	 	'mobile'=>[\Lang::get('salesAgent.mobile')],
 	 	'phone'=>[\Lang::get('salesAgent.phone')],
 	 	'email'=>[\Lang::get('salesAgent.email')],
 	 	 ];
 	 	return $columes;
  }
 	 		 public function scopeSearch($query, $data) {

 	 	 if(isset($data["name"])){
 	 	   $query->where("name","LIKE","%".$data["name"]."%");}
 	 	 if(isset($data["mobile"])){
 	 	   $query->where("mobile","LIKE","%".$data["mobile"]."%");}
 	 	 if(isset($data["phone"])){
 	 	   $query->where("phone","LIKE","%".$data["phone"]."%");}
 	 	 if(isset($data["email"])){
 	 	   $query->where("email","LIKE","%".$data["email"]."%");}
 	 	 return $query ;
 	 	 }
 	 	 
}