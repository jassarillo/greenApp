<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
    protected $table = 'eventos';

    protected $fillable = [
        'id', 'titulo','descripcion','fecha','comentarios','ruta_IMG',
        'created_at','updated_at'
    ];
}