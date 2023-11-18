<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Centro;

class ConsultaController extends Controller
{
    function __construct()
    {
         // Agrega aquí las políticas de acceso (si es necesario)
         $this->middleware('permission:consultar|crear-consultar|editar-consultar|borrar-consultar')->only('index');
    
    }

    public function index()
    {
        $centros = Centro::all(); // Obtener todos los registros de la tabla "centros comerciales"
        return view('consulta.index', compact('centros')); // Pasar los datos a la vista "consulta.index"
    }
}
