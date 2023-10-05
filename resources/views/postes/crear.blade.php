@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Crear Poste</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if ($errors->any())
                                <!-- ... Código de manejo de errores ... -->
                            @endif

                            <form action="{{ route('postes.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre_poste">Nombre Poste</label>
                                            <input type="text" name="nombre_poste" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="latitud">Latitud</label>
                                            <input type="text" name="latitud" id="latitud" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="longitud">Longitud</label>
                                            <input type="text" name="longitud" id="longitud" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="altura">Altura</label>
                                            <select name="altura" class="form-control">
                                                <option value="3.0">3.0</option>
                                                <option value="3.5">3.5</option>
                                                <option value="4.0">4.0</option>
                                                <option value="4.5">4.5</option>
                                                <option value="5.0">5.0</option>
                                                <option value="5.5">5.5</option>
                                                <option value="6.0">6.0</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="material">Material</label>
                                            <select name="material" class="form-control">
                                                <option value="madera">Madera</option>
                                                <option value="concreto">Concreto</option>
                                                <option value="metalico">Metálico</option>
                                                <option value="plastico">Plástico</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="estado">Estado</label>
                                            <select name="estado" class="form-control">
                                                <option value="buena">Buena</option>
                                                <option value="regular">Regular</option>
                                                <option value="malo">Malo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="comuna">Comuna</label>
                                            <select name="comuna" class="form-control">
                                                <option value="La Floresta">La Floresta</option>
                                                <option value="Las Palmas">Las Palmas</option>
                                                <option value="Noroccidental">Noroccidental</option>
                                                <option value="Nororiental">Nororiental</option>
                                                <option value="Norte">Norte</option>
                                                <option value="Entre Ríos">Entre Ríos</option>
                                                <option value="Central">Central</option>
                                                <option value="Oriental">Oriental</option>
                                                <option value="Occidental">Occidental</option>
                                                <option value="Centro Oriente">Centro Oriente</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="direccion">Dirección</label>
                                            <input type="text" name="direccion" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nivel_tension">Nivel Tensión</label>
                                            <select name="nivel_tension" class="form-control">
                                                <option value="alta tension">Alta Tensión</option>
                                                <option value="media tension">Media Tensión</option>
                                                <option value="baja tension">Baja Tensión</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" name="observacion" style="height: 100px"></textarea>
                                            <label for="observacion">Observación</label>
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

    <!-- Script para obtener la geolocalización -->
    <script>
        // Función para obtener la geolocalización del usuario
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Tu navegador no soporta geolocalización.");
            }
        }

        // Función para mostrar la posición en los campos de latitud y longitud
        function showPosition(position) {
            document.getElementById("latitud").value = position.coords.latitude;
            document.getElementById("longitud").value = position.coords.longitude;
        }

        // Llamar a la función para obtener la geolocalización al cargar la página
        getLocation();
    </script>
@endsection
