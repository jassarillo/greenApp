<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Favorites extends Model
{
    protected $table = 'productos_favoritos';

    protected $fillable = [
        'id','id_product','id_user','status','date','created_at','updated_at'
    ];
}