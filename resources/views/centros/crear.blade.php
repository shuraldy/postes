@extends('layouts.app')
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Crear Centro Comercial</h3>
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

                            <form action="{{ route('centros.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre_negocio">Nombre del centro comercial</label>
                                            <input type="text" name="nombre_negocio" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="ubicacion">Ubicacion</label>
                                            <input type="text" name="ubicacion" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre">Nombre del representante legal</label>
                                            <input type="text" name="nombre" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="apellido">Apellido del representante legal</label>
                                            <input type="text" name="apellido" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="telefono">Teléfono</label>
                                            <input type="text" name="telefono" class="form-control">
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="">Estado</label>
                                            <select name="estado" class="form-control">
                                                <option value="">Seleccione una opción</option>
                                                <option value="Activo">Activo</option>
                                                <option value="Inactivo">Inactivo</option>
                                                <option value="Deuda">Deuda</option>
                                                <option value="Desalojo">Desalojo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="categoria">Categoría</label>
                                            <select id="categoria" name="categoria" class="form-control">
                                                <option value="">Seleccione una opción</option>
                                                <option value="Alimentos">Alimentos</option>
                                                <option value="Ropa_Textil">Ropa y textiles</option>
                                                <option value="Deportes">Deportes</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="opciones">Subcategoria</label>
                                            <select id="opciones" name="opciones" class="form-control">
                                               
                                            </select>
                                        </div>
                                    </div>
                                    
            
                                </div>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
@endsection