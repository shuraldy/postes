@extends('layouts.app')

@section('content')

<section class="section">
    <div class="section-header">
        <h3 class="page__heading">Centros Comerciales</h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">

                    @can('crear-centro')
                                <a class="btn btn-warning" href="{{ route('centros.create') }}">Nuevo</a>
                            @endcan

                        <table class="table table-striped mt-2">
                            <thead style="background-color:#6777ef">                                     
                                <th style="display: none;">ID</th>
                                <th style="color:#fff;">Nombre del negocio</th>
                                <th style="color:#fff;">Ubicación</th>
                                <th style="color:#fff;">Nombre</th>
                                <th style="color:#fff;">apellido</th>
                                <th style="color:#fff;">Telefono</th>
                                <th style="color:#fff;">Estado</th>
                                <th style="color:#fff;">Categoria</th>
                                <th style="color:#fff;">Subcategoria</th>
                                <th style="color:#fff;">Acciones</th>                                                                   
                            </thead>
                            <tbody>
                                    @foreach ($centros as $centro)
                                        <tr>
                                            <td style="display: none;">{{ $centro->id }}</td>
                                            <td>{{ $centro->nombre_negocio}}</td>
                                            <td>{{ $centro->ubicacion }}</td>
                                            <td>{{ $centro->nombre }}</td>
                                            <td>{{ $centro->apellido }}</td>
                                            <td>{{ $centro->telefono }}</td>
                                            <td>{{ $centro->estado }}</td>
                                            <td>{{ $centro->categoria }}</td>
                                            <td>{{ $centro->opciones }}</td>
                                            
                                            <td>
                                                <form action="{{ route('centros.destroy', $centro->id) }}" method="POST">
                                                    @can('editar-centro')
                                                        <a class="btn btn-info" href="{{ route('centros.edit', $centro->id) }}">Editar</a>
                                                    @endcan

                                                    @csrf
                                                    @method('DELETE')
                                                    @can('borrar-centro')
                                                        <button type="submit" class="btn btn-danger">Borrar</button>
                                                    @endcan
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                        </table>              
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   
@endsection
