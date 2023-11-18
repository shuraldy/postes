<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


//agregamos lo siguiente
use App\Http\Controllers\Controller;
use App\Models\Centro;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;

class CentroController extends Controller
{
    function __construct()
    {
         // Agrega aquí las políticas de acceso (si es necesario)
         $this->middleware('permission:ver-centro|crear-centro|editar-centro|borrar-centro')->only('index');
         $this->middleware('permission:crear-centro', ['only' => ['create','store']]);
         $this->middleware('permission:editar-centro', ['only' => ['edit','update']]);
         $this->middleware('permission:borrar-centro', ['only' => ['destroy']]);

    }
     
    public function index()
    {
        $centros = Centro::paginate(10);
         return view('centros.index', compact('centros'));
    }

    public function create()
    {
        return view('centros.crear');
    }

    public function store(Request $request)
    {
        $request->validate([
        'nombre_negocio'  => 'required|string|max:100',
        'ubicacion'  => 'required|string|max:100',
        'nombre'  => 'required|string|max:100',
        'apellido'  => 'required|string|max:100',
        'telefono'  => 'required|string|max:100',
        'estado'  => 'required|string|max:100',
        'categoria'  => 'required|string|max:100',
        'opciones'  => 'required|string|max:100',

    ]);

    Centro::create($request->all());

    return redirect()->route('centros.index');

    }

   
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Centro $centro )
    {
        return view('centros.editar', compact('centro'));
    }

    public function update(Request $request, Centro $centro)
    {

        $request->validate([
            'nombre_negocio'  => 'required|string|max:100',
            'ubicacion'  => 'required|string|max:100',
            'nombre'  => 'required|string|max:100',
            'apellido'  => 'required|string|max:100',
            'telefono'  => 'required|string|max:100',
            'estado'  => 'required|string|max:100',
            'categoria'  => 'required|string|max:100',
            'opciones'  => 'required|string|max:100',
        ]);

        $centro->update($request->all());

        return redirect()->route('centros.index');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Centro $centro)
    {
        $centro->delete();

        return redirect()->route('centros.index');
    }
}
