<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Haciendo uso de modelos:


use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Input;
use DB;
use Session;
use App\Products;
use App\User;

class ServiceController extends Controller
{


  
    public function loginServ($username,$password)
    {
        $user = User::select('*')
         ->where('name','=',$username)
         ->where('contra','=',$password)
         ->get()->toArray();
         //dd($user);
         if($user){
            $result = 1;
         }
         else
         {

            $result =0;
         }
         return response ()->json ($result);

    }

    public function products()
    {
        $result = products::select('*')->get()->toArray();
        return response ()->json ($result);

    }
    


   





}
