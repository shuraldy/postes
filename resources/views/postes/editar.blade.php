@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Editar Poste</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if ($errors->any())
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

                            <form action="{{ route('postes.update', $poste->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nombre_poste">Nombre Poste</label>
                                            <input type="text" name="nombre_poste" class="form-control" value="{{ $poste->nombre_poste }}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="latitud">Latitud</label>
                                            <input type="text" name="latitud" id="latitud" class="form-control" value="{{ $poste->latitud }}" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="longitud">Longitud</label>
                                            <input type="text" name="longitud" id="longitud" class="form-control" value="{{ $poste->longitud }}" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="altura">Altura</label>
                                            <select name="altura" class="form-control">
                                                <option value="3.0" {{ $poste->altura == '3.0' ? 'selected' : '' }}>3.0</option>
                                                <option value="3.5" {{ $poste->altura == '3.5' ? 'selected' : '' }}>3.5</option>
                                                <option value="4.0" {{ $poste->altura == '4.0' ? 'selected' : '' }}>4.0</option>
                                                <option value="4.5" {{ $poste->altura == '4.5' ? 'selected' : '' }}>4.5</option>
                                                <option value="5.0" {{ $poste->altura == '5.0' ? 'selected' : '' }}>5.0</option>
                                                <option value="5.5" {{ $poste->altura == '5.5' ? 'selected' : '' }}>5.5</option>
                                                <option value="6.0" {{ $poste->altura == '6.0' ? 'selected' : '' }}>6.0</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="material">Material</label>
                                            <select name="material" class="form-control">
                                                <option value="madera" {{ $poste->material == 'madera' ? 'selected' : '' }}>Madera</option>
                                                <option value="concreto" {{ $poste->material == 'concreto' ? 'selected' : '' }}>Concreto</option>
                                                <option value="metalico" {{ $poste->material == 'metalico' ? 'selected' : '' }}>Metálico</option>
                                                <option value="plastico" {{ $poste->material == 'plastico' ? 'selected' : '' }}>Plástico</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="estado">Estado</label>
                                            <select name="estado" class="form-control">
                                                <option value="buena" {{ $poste->estado == 'buena' ? 'selected' : '' }}>Buena</option>
                                                <option value="regular" {{ $poste->estado == 'regular' ? 'selected' : '' }}>Regular</option>
                                                <option value="malo" {{ $poste->estado == 'malo' ? 'selected' : '' }}>Malo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="comuna">Comuna</label>
                                            <select name="comuna" class="form-control">
                                                <option value="La Floresta" {{ $poste->comuna == 'La Floresta' ? 'selected' : '' }}>La Floresta</option>
                                                <option value="Las Palmas" {{ $poste->comuna == 'Las Palmas' ? 'selected' : '' }}>Las Palmas</option>
                                                <option value="Noroccidental" {{ $poste->comuna == 'Noroccidental' ? 'selected' : '' }}>Noroccidental</option>
                                                <option value="Nororiental" {{ $poste->comuna == 'Nororiental' ? 'selected' : '' }}>Nororiental</option>
                                                <option value="Norte" {{ $poste->comuna == 'Norte' ? 'selected' : '' }}>Norte</option>
                                                <option value="Entre Ríos" {{ $poste->comuna == 'Entre Ríos' ? 'selected' : '' }}>Entre Ríos</option>
                                                <option value="Central" {{ $poste->comuna == 'Central' ? 'selected' : '' }}>Central</option>
                                                <option value="Oriental" {{ $poste->comuna == 'Oriental' ? 'selected' : '' }}>Oriental</option>
                                                <option value="Occidental" {{ $poste->comuna == 'Occidental' ? 'selected' : '' }}>Occidental</option>
                                                <option value="Centro Oriente" {{ $poste->comuna == 'Centro Oriente' ? 'selected' : '' }}>Centro Oriente</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="direccion">Dirección</label>
                                            <input type="text" name="direccion" class="form-control" value="{{ $poste->direccion }}">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6">
                                        <div class="form-group">
                                            <label for="nivel_tension">Nivel Tensión</label>
                                            <select name="nivel_tension" class="form-control">
                                                <option value="alta tension" {{ $poste->nivel_tension == 'alta tension' ? 'selected' : '' }}>Alta Tensión</option>
                                                <option value="media tension" {{ $poste->nivel_tension == 'media tension' ? 'selected' : '' }}>Media Tensión</option>
                                                <option value="baja tension" {{ $poste->nivel_tension == 'baja tension' ? 'selected' : '' }}>Baja Tensión</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="form-floating">
                                            <label for="observacion">Observación</label>
                                            <textarea class="form-control" name="observacion" style="height: 100px">{{ $poste->observacion }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <br>
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
