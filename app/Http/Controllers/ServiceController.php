<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
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

    public function storeUser(REquest $request)
    {
/*
        alias: "33"
        confirm_contrasenia: "77"
        confirm_correo: "55"
        contrasenia: "66"
        correo: "44"
        direccion: "22"
        fecha_nac: "2020-04-04"
        genero: "f"
        nombre: "11"
        userFacebook: "88"
        userInstagram: "10"
        userTwitter: "99"
*/ //'password' => Hash::make($request->newPassword)
        $addUser = new User;
        $addUser->alias = $request->alias;
        $addUser->name = $request->nombre;
        $addUser->contra = $request->contrasenia;
        $addUser->email = $request->correo;
        $addUser->direccion = $request->direccion;
        $addUser->fecha_nac = $request->fecha_nac;
        $addUser->genero = $request->genero;
        $addUser->userFacebook = $request->userFacebook;
        $addUser->userInstagram = $request->userInstagram;
        $addUser->userTwitter = $request->userTwitter;
        $addUser->password = Hash::make($request->newPassword);
        $addUser->status = 0;
        $addUser->save();
        
        return response ()->json ($addUser->id);
    }
    


   





}
