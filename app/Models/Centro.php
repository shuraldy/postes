<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Centro extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    use HasFactory;

    protected $fillable = [
        'nombre_negocio',
        'ubicacion',
        'nombre',
        'apellido',
        'telefono',
        'estado',
        'categoria',
        'opciones',
    ];
}
