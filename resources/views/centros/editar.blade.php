@extends('layouts.app')
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Editar Centro Comercial</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if ($errors->any())
                                <!-- ... Código de manejo de errores ... -->
                                <div class="alert alert-dark alert-dismissible fade show" role="alert">
                                    <strong>¡Revise los campos!</strong>
                                    @foreach ($errors->all() as $error)
                                        <span class="badge badge-danger">{{ $error }}</span>
                                    @endforeach
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif

                            <form action="{{ route('centros.update', $centro->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre_negocio">Nombre del centro comercial</label>
                                            <input type="text" name="nombre_negocio" class="form-control" value="{{ $centro->nombre_negocio }}">
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="ubicacion">Ubicacion</label>
                                            <input type="text" name="ubicacion" class="form-control" value="{{ $centro->ubicacion }}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre">Nombre del representante legal</label>
                                            <input type="text" name="nombre" class="form-control" value="{{ $centro->nombre }}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="apellido">Apellido del representante legal</label>
                                            <input type="text" name="apellido" class="form-control" value="{{ $centro->apellido }}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="telefono">Teléfono</label>
                                            <input type="text" name="telefono" class="form-control" value="{{ $centro->telefono }}">
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="">Estado</label>
                                            <select name="estado" class="form-control">
                                                <option value="Activo" {{ $centro->estado == 'Activo' ? 'selected' : '' }}>Activo</option>
                                                <option value="Inactivo" {{ $centro->estado == 'Inactivo' ? 'selected' : '' }}>Inactivo</option>
                                                <option value="Deuda" {{ $centro->estado == 'Deuda' ? 'selected' : '' }}>Deuda</option>
                                                <option value="Desalojo" {{ $centro->estado == 'Desalojo' ? 'selected' : '' }}>Desalojo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="categoria">Categoría</label>
                                            <select id="categoria" name="categoria" class="form-control">
                                                <option value="Alimentos" {{ $centro->categoria == 'Alimentos' ? 'selected' : '' }}>Alimentos</option>
                                                <option value="Ropa_Textil" {{ $centro->categoria == 'Ropa_Textil' ? 'selected' : '' }}>Ropa y textiles</option>
                                                <option value="Deportes" {{ $centro->categoria == 'Deportes' ? 'selected' : '' }}>Deportes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="opciones">Subcategoria</label>
                                            <select id="opciones" name="opciones" class="form-control">
                                                @if($centro->categoria == 'Alimentos')
                                                    <option value="Frutas" {{ $centro->opciones == 'Frutas' ? 'selected' : '' }}>Frutas</option>
                                                    <option value="Verduras" {{ $centro->opciones == 'Verduras' ? 'selected' : '' }}>Verduras</option>
                                                    <option value="Granos" {{ $centro->opciones == 'Granos' ? 'selected' : '' }}>Granos</option>
                                                @elseif($centro->categoria == 'Ropa_Textil')
                                                    <option value="Hombre" {{ $centro->opciones == 'Hombre' ? 'selected' : '' }}>Hombre</option>
                                                    <option value="Mujer" {{ $centro->opciones == 'Mujer' ? 'selected' : '' }}>Mujer</option>
                                                    <option value="Ninos" {{ $centro->opciones == 'Ninos' ? 'selected' : '' }}>Niños</option>
                                                @elseif($centro->categoria == 'Deportes')
                                                    <option value="Futbol" {{ $centro->opciones == 'Futbol' ? 'selected' : '' }}>Fútbol</option>
                                                    <option value="Baloncesto" {{ $centro->opciones == 'Baloncesto' ? 'selected' : '' }}>Baloncesto</option>
                                                    <option value="Voleibol" {{ $centro->opciones == 'Voleibol' ? 'selected' : '' }}>Voleibol</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <!-- <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" name="observacion" style="height: 100px">{{ $centro->observacion }}</textarea>
                                            <label for="observacion">Observación</label>
                                        </div>
                                    </div> -->
                                </div>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <!-- Script para obtener las subcategorias -->
    <script>
    $(document).ready(function () {
        // Maneja el cambio en la lista de categorías
        $('#categoria').on('change', function () {
            var categoriaSeleccionada = $(this).val();
            var opcionesLista = $('#opciones');

            // Limpia las opciones existentes
            opcionesLista.empty();

            // Activa o desactiva la lista de opciones según la categoría seleccionada
            if (categoriaSeleccionada === 'Alimentos') {
                opcionesLista.prop('disabled', false);
                // Agrega opciones para alimentos
                opcionesLista.append('<option value="Frutas">Frutas</option>');
                opcionesLista.append('<option value="Verduras">Verduras</option>');
                opcionesLista.append('<option value="Granos">Granos</option>');
            } else if (categoriaSeleccionada === 'Ropa_Textil') {
                opcionesLista.prop('disabled', false);
                // Agrega opciones para ropa y textil
                opcionesLista.append('<option value="Hombre">Hombre</option>');
                opcionesLista.append('<option value="Mujer">Mujer</option>');
                opcionesLista.append('<option value="Ninos">Niños</option>');
            } else if (categoriaSeleccionada === 'Deportes') {
                opcionesLista.prop('disabled', false);
                // Agrega opciones para deportes
                opcionesLista.append('<option value="Futbol">Fútbol</option>');
                opcionesLista.append('<option value="Baloncesto">Baloncesto</option>');
                opcionesLista.append('<option value="Voleibol">Voleibol</option>');
            } else {
                // Si no se selecciona ninguna categoría, desactiva la lista de opciones
                opcionesLista.prop('disabled', true);
            }
        });

        // Inicializa la lista de opciones al cargar la página
        $('#categoria').trigger('change');
    });
    </script>


</section>
@endsection
