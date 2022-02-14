<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Facilites extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function home()
    {
        return $this->belongsTo(Home::class);
    }
}
