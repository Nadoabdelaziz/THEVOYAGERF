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
use App\Models\Finalarrival;
use App\Models\Coverrequest;
use App\Models\Arrival;



class ArrivedController extends Controller
{
    //

    public function Arrived_Orders(Request $request){

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

        $returnvalue=Finalarrival::where('user_id',$userid)->get();
        

        return response(['message'=> 'All Your Successfully arrived Orders','data'=>$returnvalue]);
    }
}
