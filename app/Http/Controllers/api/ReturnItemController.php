<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Auth;
use App\Models\User;
use App\Models\Item;
use App\Models\AddToShelf;
use App\Models\Returnitem;
use App\Models\Usersorder;


use Illuminate\Support\Facades\Http;
use DB;
use App\Models\Strorage;
use App\Models\Arrival;
use app\Http\Controllers\api\ArrivalController;

class ReturnItemController extends Controller
{
    public function Return_Item(Request $request){

        $user_data = $request->validate([
            'email' => 'required',
            'Item_ID'=>'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return response(['message'=>'email ghalat']);
        }

        // $the_user= User::where('email',$request->email)->first();
        // $userid=$the_user->id;


        if(!Item::where('order_id',$request->Item_ID)->first()){
            return response(['message'=>'the item id doesnot belong to this user or doesnot exist']);
        }

        
        $the_shelf_added=AddToShelf::where('pack_id',$request->Item_ID)->first();
        
        $the_return_item=array(
            'order_id' => $request->Item_ID,
            'status' => 'موجودة في المستودع',
            'store_place' => $the_shelf_added->shelf_name ."-".$the_shelf_added->row_number,
        );

        Returnitem::create($the_return_item);

        Item::where('order_id',$request->Item_ID)->delete();

        AddToShelf::where('pack_id',$request->Item_ID)->delete();

        Usersorder::where('Product_arrival_id',$request->Item_ID)->first()->delete();



        return response(['messsage' => 'Suucessfully Removed Your Item ']);

    }
    //
}
