<?php namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Models\Users;

class AdminController extends Controller
{
    public function index()
    {
        $user = Users::all();
        //dd($user);
        return view('admin.index')->withUser($user);
    }
}
