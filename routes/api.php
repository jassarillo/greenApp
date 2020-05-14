<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/json', function () {
    return [1, 2, 3];
});


Route::get('loginServ/{username}/{password}', 'ServiceController@loginServ');
Route::get('saveFavorits/{idProduct}/{idUser}', 'ServiceController@saveFavorits');
Route::get('products', 'ServiceController@products');
Route::get('events', 'ServiceController@events');
Route::get('getFavorits/{idProduct}/{idUser}', 'ServiceController@getFavorits');
Route::post('storeUser', 'ServiceController@storeUser');

