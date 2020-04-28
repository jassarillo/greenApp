<?php

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');
Auth::routes();

/*
|------------------------------------------------------------------------------------
| Admin
|------------------------------------------------------------------------------------
*/
Route::group(['prefix' => ADMIN, 'as' => ADMIN . '.', 'middleware'=>['auth', 'Role:10']], function () {
    Route::get('/', 'DashboardController@index')->name('dash');
    Route::resource('users', 'UserController');
    
});
Route::get('/eventos', function () {
    return view('eventos.eventos');
});
Route::get('/productos', function () {
    return view('productos.productos');
});
Route::get('/chat_ejem', function () {
    return view('chat_ejem.chat');
});
Route::get('/', function () {
    return view('welcome');
});
