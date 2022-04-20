<?php

namespace App\Http\Controllers\Api;

use App\Models\Arrival;
use App\Models\Source;

use Illuminate\Http\Request;

use Orion\Concerns\DisableAuthorization;

use Orion\Http\Controllers\Controller as OrionController;


class ArrivalController extends OrionController
{
    use DisableAuthorization;

    protected $model = Arrival::class;  
    // or "App\Models\Post"

    /*
    protected function beforeSave(Request $request, $entity){
        echo $request->id;
    }
    */

    
}
