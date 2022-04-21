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


use App\Models\Recoverenquiry;
use Illuminate\Support\Facades\Http;
use DB;
use App\Models\Strorage;
use App\Models\Coverrequest;
use App\Models\Arrival;
use app\Http\Controllers\api\ArrivalController;



class OPerationsItemController extends Controller
{
    //

    public function view_all_orders(Request $request){

        $user_data = $request->validate([
            'email' => 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;


        $returnvalue=Item::where('user_id',$userid)->get();
        
        return response(['messsage' => 'here are all your orders','Orders'=>$returnvalue]);
    }

    public function Request_Cover(Request $request){
        

        $user_data = $request->validate([
            'email' => 'required',
            'order_ID' =>'required|min:2',
            'order_ID2' =>'min:2',
            'order_ID3' =>'min:2',
            'order_ID4' =>'min:2',
            'order_ID5' =>'min:2',
            'order_ID6' =>'min:2',
            'order_ID7' =>'min:2',

        ]);

        if(! User::where('email',$request->email)->first()){
            return response(['message'=>'Invalid User Email']);
        }
        
        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;


        $theorders_count = count($request->all());

        
        $first_order=Item::where('order_id',$request->order_ID)->first();
        $Second_order=Item::where('order_id',$request->order_ID2)->first();
        $Third_order=Item::where('order_id',$request->order_ID3)->first();
        $Forth_order=Item::where('order_id',$request->order_ID4)->first();


        if(! Item::where('order_id',$request->order_ID)->first() && ! Item::where('order_id',$request->order_ID2)->first() 
        && ! Item::where('order_id',$request->order_ID3)->first() && ! Item::where('order_id',$request->order_ID4)->first()
        ){
            return response(['message'=> 'Invalid Item id']);
        }


        $decode[0] = json_decode($request->order_ID);
        if(isset($request->order_ID2)){
            $decode[1] = json_decode($request->order_ID2);
        }
        if(isset($request->order_ID3)){
            $decode[2] = json_decode($request->order_ID3);
        }
        if(isset($request->order_ID4)){
            $decode[3] = json_decode($request->order_ID4);
        }



        $recover = array
        (

            'user_id'  => $userid,
            // 'Product_Dimension' =>$first_order->Product_Dimension, //not donee
            'Product_Weight' =>$first_order->weight,
            'no_of_items' => $theorders_count-1,
            'Paid_Amount'=> 20,
            'reference'=> json_encode($decode),
            'order_statuss'=>'موجودة في المسودع',
        );
        Coverrequest::create($recover);



        $the_cover_req=Coverrequest::orderBy('id', 'desc')->first();



        $order_status_enquiries=array(

            'id' => $the_cover_req->id,
            'status'=>'موجودة في المستودع',
        );
        Recoverenquiry::create($order_status_enquiries);

        $vars=DB::table('usersorders')->orderBy('id', 'DESC')->first();
            
        AddToShelf::where('id',$vars->Product_Shelf_id)->first()->delete();

        Usersorder::where('id',$vars->id)->first()->delete();

        return response(['message'=> 'Cover request is done successfully','data'=>DB::table('coverrequests')->orderBy('id', 'DESC')->first()]);
    }
}
