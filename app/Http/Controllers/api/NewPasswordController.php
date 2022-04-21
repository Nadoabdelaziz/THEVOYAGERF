<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Hash;
use Auth;
use Illuminate\Support\Facades\Password;
use Illuminate\Auth\Events\PasswordReset;
use Validator;
use Illuminate\Validation\Rules\Password as RulesPassword;
use App\Models\User;


class NewPasswordController extends Controller
{
    public function forgotPassword(Request $request)
    {


        $login_data = $request->validate([
            'email' => 'email|required',
            'password' => 'required',
        ]);

        $new_password_data =$request->validate([
            'new_password'=> 'required|confirmed',
        ]);

        if(!Auth::attempt($login_data)){
            return response(['message' => 'Invalid Credientails']);
        }

        $new_password_data['new_password'] =bcrypt($request->new_password);

        $the_user= User::where('email',$request->email)->first();

        $the_user->update([
            'password'=>$new_password_data['new_password']
        ]);



        return response(['message'=>'Suucessfully Updated Your Password','data'=>Auth::user()]);

    
    }
}
