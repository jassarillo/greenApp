<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class ProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function saveProducts(Request $request)
    {
        dd($request);
        $items = User::latest('updated_at')->get();

        return view('eventos.eventos', compact('items'));
        //return view('admin.dashboard.index');
    }


}

