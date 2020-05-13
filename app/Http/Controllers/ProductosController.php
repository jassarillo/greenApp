<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Products;

class ProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function saveProducts(Request $request)
    {
        //dd($request);
        $prod = new Products;
        
        $prod->titulo = $request->titulo;
        $prod->descripcion = $request->descripcion;
        $prod->status = 1;
        $prod->save();

        return response()->json($prod->id);
        //return view('admin.dashboard.index');
    }


}

