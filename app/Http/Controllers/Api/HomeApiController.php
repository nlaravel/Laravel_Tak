<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\HomeResource;
use App\Models\Home;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseControllerApi;

class HomeApiController extends BaseControllerApi
{


    public function getHomes(Request $request){


        $homes = Home::query();
        if($request->home_id){
            $homes  = Home::FindOrFail($request->home_id);
            $result= [
                'homes'=>new HomeResource($homes),
            ];
            return $this->sendResponse($result,'');
        }

        $homes =$homes->paginate(10);
        $result= [
            'homes'=>HomeResource::collection($homes),
            "pagination"=>[
                "i_total_objects"=>$homes->count(),
                "i_items_on_page"=> $homes->count(),
                "i_per_pages"=>$homes->perPage(),
                "i_current_page"=>$homes->currentPage() ,
                "i_total_pages"=> $homes->total()
            ]

        ];
        return $this->sendResponse($result,'');
    }

}
