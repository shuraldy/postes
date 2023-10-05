<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Poste;

class MapaController extends Controller
{
    function __construct()
    {
         // Agrega aquí las políticas de acceso (si es necesario)
         $this->middleware('permission:ver-mapa|crear-poste|editar-poste|borrar-poste')->only('index');
        
    }

    public function index()
    {
         // Con paginación
         $postes = Poste::all();
         return view('mapa.index', compact('postes'));
         // Recuerda agregar en el archivo index.blade.php el siguiente código para mostrar la paginación:
         // {!! $postes->links() !!}
    }

    // public function create()
    // {
    //     return view('mapa.crear');
    // }

    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'nombre_poste' => 'required|string|max:100',
    //         'latitud' => 'required|numeric',
    //         'longitud' => 'required|numeric',
    //         'altura' => 'required|numeric',
    //         'material' => 'required|string|max:50',
    //         'estado' => 'required|string|max:50',
    //         'comuna' => 'required|string|max:100',
    //         'direccion' => 'required|string|max:200',
    //         'nivel_tension' => 'required|string|max:50',
    //         'observacion' => 'nullable|string|max:255',
    //     ]);

    //     Poste::create($request->all());

    //     return redirect()->route('postes.index');
    // }

    // public function edit(Poste $poste)
    // {
    //     return view('postes.editar', compact('poste'));
    // }

    // public function update(Request $request, Poste $poste)
    // {
    //     $request->validate([
    //         'nombre_poste' => 'required|string|max:100',
    //         'latitud' => 'required|numeric',
    //         'longitud' => 'required|numeric',
    //         'altura' => 'required|numeric',
    //         'material' => 'required|string|max:50',
    //         'estado' => 'required|string|max:50',
    //         'comuna' => 'required|string|max:100',
    //         'direccion' => 'required|string|max:200',
    //         'nivel_tension' => 'required|string|max:50',
    //         'observacion' => 'nullable|string|max:255',
    //     ]);

    //     $poste->update($request->all());

    //     return redirect()->route('postes.index');
    // }

    // public function destroy(Poste $poste)
    // {
    //     $poste->delete();

    //     return redirect()->route('postes.index');
    // }
}
