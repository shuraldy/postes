@extends('layouts.app')

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Mapa</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                        <div id="map" style="height: 500px;"></div>
                        
                           

                            

                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        
    </section>

    <script>
    // Inicializa el mapa en el elemento con el ID "map"
    var map = L.map('map').setView([2.93494061, -75.28356302], 8); // La vista inicial se establece en el centro del mundo (latitud 0, longitud 0) con un nivel de zoom de 2.

    // Agrega una capa de mapa base de OpenStreetMap
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
    }).addTo(map);

    // Itera a través de los postes y agrega marcadores al mapa
    @foreach ($postes as $poste)
        L.marker([{{ $poste->latitud }}, {{ $poste->longitud }}])
            .addTo(map)
            .bindPopup("Nombre del poste: {{ $poste->nombre_poste }}<br>Latitud: {{ $poste->latitud }}<br>Longitud: {{ $poste->longitud }}");
    @endforeach
</script>

@endsection