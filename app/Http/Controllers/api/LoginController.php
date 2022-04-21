<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use Auth;


class LoginController extends Controller
{
    public function register(Request $request)
    {
        $validate_data=$request->validate([
            'name' => 'required|max:55',
            'email' => 'email|required|unique:users',
            'password' => 'required|confirmed'
        ]);

        $validate_data['password'] =bcrypt($request->password);
  
        $user= User::create($validate_data);

        $accessToken = $user ->createToken('authToken')->accessToken;

        return response(['message'=>'Suucessfully Registered New User','user'=>$user, 'access_token' => $accessToken->token]);
    }


    public function login(Request $request)
    {
        $login_data = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if(!Auth::attempt($login_data)){
            return response(['message' => 'Invalid Credientails']);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response(['message'=>'Suucessfully Logged In ','access_token' => $accessToken->token ,'data'=>Auth::user()]);

    }
    //
}
