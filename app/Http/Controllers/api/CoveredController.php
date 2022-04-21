<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;



use Auth;
use App\Models\User;
use App\Models\Item;
use App\Models\Alreadycovered;
use App\Models\Returnitem;
use App\Models\Usersorder;


use App\Models\Recoverenquiry;
use Illuminate\Support\Facades\Http;
use DB;
use App\Models\Strorage;
use App\Models\Coverrequest;
use App\Models\Arrival;



class CoveredController extends Controller
{
    public function Get_Cover_requests(Request $request){

        $user_data = $request->validate([
            'email' => 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;

        if(!Coverrequest::where('user_id',$userid)->get()){
            return response(['message'=>'You Do not have any Covered Orders']);
        }

        $returnvalue=Coverrequest::where('user_id',$userid)->get();
        

        return response(['message'=> 'All Your Cover requests','data'=>$returnvalue]);
    }

    public function GetCoveredOrders(Request $request){

        $user_data = $request->validate([
            'email' => 'required'
        ]);

        if(!User::where('email',$request->email)->first()){
            return 'Invalid User Email';
        }

        $the_user= User::where('email',$request->email)->first();
        $userid=$the_user->id;

        if(!Alreadycovered::where('user_id',$userid)->get()){
            return response(['message'=>'You Do not have any Covered Orders']);
        }

        $returnvalue=Alreadycovered::where('user_id',$userid)->get();
        

        return response(['message'=> 'All Your Successfully Covered Orders','data'=>$returnvalue]);
    }

    public function pay_taghleef(Request $request){

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

        if(!Coverrequest::where('id',$request->order_id)->get()){
            return response(['message'=>'Invalid Order ID']);
        }


        $returnvalue=Coverrequest::where('id',$request->order_id)->first();
        
        $returnvalue->update([
            'paid' => 1
        ]);

        return response(['message'=> 'Payment Done Succesfully for Your Cover request','data'=>$returnvalue]);

    }
    //
}
