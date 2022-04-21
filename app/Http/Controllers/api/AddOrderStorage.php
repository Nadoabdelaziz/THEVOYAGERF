<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use App\Models\User;
use App\Models\Item;
use App\Models\AddToShelf;
use App\Models\Returnitem;

use Illuminate\Support\Facades\Http;
use DB;
use App\Models\Strorage;
use App\Models\Arrival;
use app\Http\Controllers\api\ArrivalController;



class AddOrderStorage extends Controller
{
    public function Create_new_order(Request $request){

        $order_data = $request->validate([
            'order_id' => 'required|max:10',
            'order_name' => 'required',
            'order_Price' => 'required',
            'Source_OF_Shipment'=>'required|min:3'
        ]);

        return response(['message'=>'Suucessfully Created the Order', 'Order Data'=>['Order ID'=>$request->order_id,'Order Name'=>$request->order_name,'Order_Price'=>$request->order_Price,'Order Source Of Shipment'=>$request->Source_OF_Shipment]]);
    }    
}
