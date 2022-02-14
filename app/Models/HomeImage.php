<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeImage extends Model
{
    protected $guarded = [];

    use HasFactory;

    protected $appends = ['image_url'];

    public function home()
    {
        return $this->belongsTo(Home::class);
    }

    public function temporaryUrl(){
        return asset('storage/homes/'.$this->image);
    }
    public function getImageUrlAttribute(){
        if($this->image){
            return asset('storage/homes/'.$this->image);
        }else{
            return asset('images/default.jpg');
        }
    }
}
