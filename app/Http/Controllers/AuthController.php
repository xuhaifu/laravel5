<?php namespace App\Http\Controllers;

use Illuminate\Routing\Controller;
use App\Http\Models\Users;
use Illuminate\Http\Request;
use Auth;


class AuthController extends Controller
{
    public function getLogin()
    {
        return view('admin.login');
    }
    
    public function postLogin(Request $request)
    {
        if ($request->has('email') && $request->has('password')){
            $post = $request->all();
        }else{
            return redirect()->intended('auth/login');
        }
        if (Auth::attempt(['email' => $post['email'], 'password' => $post['password']])){
            return redirect()->intended('admin');
        }else {
            return view('base.error')->with('msg','验证不成功');
        }
    }
    
    public function getlogout()
    {
        Auth::logout();
        return redirect()->intended('auth/login');
    }
}
