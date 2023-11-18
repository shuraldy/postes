@extends('layouts.app')

<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
 <script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Consulta de centros comerciales</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                        
                           

                            <table class="table table-striped mt-2" id="centrosTable">
                                <thead style="background-color:#6777ef">                                     
                                    <th style="display: none;">id</th>
                                    <th style="color:#fff;">Nombre del negocio</th>
                                    <th style="color:#fff;">Ubicación</th>
                                    <th style="color:#fff;">Nombre</th>
                                    <th style="color:#fff;">Apellido</th>
                                    <th style="color:#fff;">Telefono</th>
                                    <th style="color:#fff;">Estado</th>
                                    <th style="color:#fff;">Categoria</th>
                                    <th style="color:#fff;">Subcategoria</th>                                                                 
                                </thead>
                                <tbody>
                                    @foreach ($centros as $centro)
                                        <tr>
                                            <td style="display: none;">{{ $centro->id }}</td>
                                            <td>{{ $centro->nombre_negocio }}</td>
                                            <td>{{ $centro->ubicacion }}</td>
                                            <td>{{ $centro->nombre }}</td>
                                            <td>{{ $centro->apellido }}</td>
                                            <td>{{ $centro->telefono }}</td>
                                            <td>{{ $centro->estado }}</td>
                                            <td>{{ $centro->categoria }}</td>
                                            <td>{{ $centro->opciones }}</td>                               
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>

                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <div id="map" style="height: 400px;"></div>
    </section>


<script>



new DataTable('#centrosTable', {
    paging: false,
    scrollCollapse: true,
    scrollY: '500px',
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel','print','pdf'],

  

    initComplete: function () {
        this.api()
            .columns()
            .every(function () {
                let column = this;
                let title = column.footer().textContent;
                
 
                // Create input element
                let input = document.createElement('input');
                input.placeholder = title;
                column.footer().replaceChildren(input);

          
 
                // Event listener for user input
                input.addEventListener('keyup', () => {
                    if (column.search() !== this.value) {
                        column.search(input.value).draw();
                    }
                });
            });
    }
});

        // Inicializar el DataTable
        $(document).ready(function() {
            $('#postesTable').DataTable();
        });

    </script>
   

@endsection






