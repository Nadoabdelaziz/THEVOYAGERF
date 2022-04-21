<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use App\Models\User;
use App\Models\Item;
use App\Models\Shipppeditem;
use App\Models\Usersorder;


use App\Models\Alreadycovered;
use Illuminate\Support\Facades\Http;
use DB;
use App\Models\Strorage;
use App\Models\Coverrequest;
use App\Models\ShipTalabat;



class ShipmentController extends Controller
{
    //
    public function Request_Shipment(Request $request)
    {
        $user_data = $request->validate([
            'email' => 'required',
            'Order_ID'=> 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;


        if(!Alreadycovered::where('order_id',$request->Order_ID)->first()){
            return 'Invalid Order ID';
        }

        $the_already_covered=Alreadycovered::where('order_id',$request->Order_ID)->first();


        $the_ship_talabat=array(
            'order_id' => $request->Order_ID,
            'Box_id' =>$the_already_covered->user_id ,
            'req_code' => $the_already_covered->reference,
            'Goal_Country' => 'الكويت',
            'email' => 'admin@admin.com',
            'item_status' =>$the_already_covered->status,
            'items_weight' => $the_already_covered->product_weight,
            'number_items' => $the_already_covered->no_of_items
        );
        
        ShipTalabat::create($the_ship_talabat);


        Alreadycovered::where('order_id',$request->Order_ID)->delete();

        return response(['message'=> 'Shipment Request Succesfully Created','data'=>$the_ship_talabat]);

    }

    public function Get_Ship_Requests(Request $request)
    {
        $user_data = $request->validate([
            'email' => 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;

        if(!ShipTalabat::where('Box_id',$userid)->get()){
            return response(['message'=>'You Do not have any Covered Orders']);
        }

        $returnvalue=ShipTalabat::where('Box_id',$userid)->get();
        

        return response(['message'=> 'All Your Shipping Requests','data'=>$returnvalue]);
    }



    
    public function GetShippedOrders(Request $request){

        $user_data = $request->validate([
            'email' => 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;

        // $the_items=Item::where('user_id',$userid)->get();


        if(!Shipppeditem::where('user_id',$userid)->get()){
            return response(['message'=>'You Do not have any Covered Orders']);
        }

        $returnvalue=Shipppeditem::where('user_id',$userid)->get();
        

        return response(['message'=> 'All Your Successfully Shipped Orders','data'=>$returnvalue]);
    }


    public function pay_shipping(Request $request){

        $user_data = $request->validate([
            'email' => 'required',
            'order_id' => 'required',
            'payment_number'=> 'required|min:8'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;

        if(!ShipTalabat::where('id',$request->order_id)->get()){
            return response(['message'=>'Invalid Order ID']);
        }


        $returnvalue=ShipTalabat::where('id',$request->order_id)->first();
        
        $returnvalue->update([
            'paid' => 1
        ]);

        return response(['message'=> 'Payment Done Succesfully for Your Shipping request','data'=>$returnvalue]);

    }
}
