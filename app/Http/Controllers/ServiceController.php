<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Input;
use DB;
use Session;
use App\Products;
use App\User;
use App\Events;
use App\Favorites;
use Carbon\Carbon;

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

  
    
    public function events()
    {
        $result = Events::select('*')->get()->toArray();
        return response ()->json ($result);

    }

   public function saveFavorits($idProduct,$idUser)
   {
    $date = Carbon::now();
    $addFav = new Favorites;
    $addFav->id_product = $idProduct;
    $addFav->id_user = $idUser;
    $addFav->date = $date;
    $addFav->status = 1;
    $addFav->save();
    //$addFav =0;
    return response ()->json ($addFav->id);

   }

    
    public function getFavorits()
    {
        $result = Favorites::select('*')->get()->toArray();
        return response ()->json ($result);

    }



}
