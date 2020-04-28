<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'productos';

    protected $fillable = [
        'id', 'titulo','ruta_IMG','descripcion','created_at'
    ];
}