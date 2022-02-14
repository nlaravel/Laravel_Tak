<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class HomeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
     //   return parent::toArray($request);

        return[

                 'id'=>$this->id,
                 'title'=>$this->title,
                 'description'=>$this->description,
                 'bedroom_count'=>$this->bedroom_count,
                 'bathroom_count'=>$this->bathroom_count,
                 'price'=>$this->home_rooms?$this->home_rooms()->first()->price:"",
                 'city'=>$this->city?$this->city:"",
                 'salesAgent'=>$this->salesAgent?$this->salesAgent:"",
                 'room_price'=>$this->home_rooms?$this->home_rooms:"",
                 'facilites'=>$this->home_rooms?$this->home_rooms:"",
                 'images'=>$this->home_images?$this->home_images:"",
                 'image_cover'=>$this->home_images?$this->home_images->where('is_main',1)->first():"",
            ];

    }
}
