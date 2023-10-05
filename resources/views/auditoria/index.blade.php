@extends('layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h3 class="page__heading">Auditoria</h3>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                        
                           

                            <table class="table table-striped mt-2" id="postesTable">
                                <thead style="background-color:#6777ef">                                     
                                    <th style="display: none;">ID</th>
                                    <th style="color:#fff;">tipo de usuario</th>
                                    <th style="color:#fff;">User Id</th>
                                    <th style="color:#fff;">Evento</th>
                                    <th style="color:#fff;">Modulo editado</th>
                                    <th style="color:#fff;">Id editado</th>
                                    <th style="color:#fff;">valores viejos</th>
                                    <th style="color:#fff;">valores nuevos</th>
                                    <th style="color:#fff;">-url</th>
                                    <th style="color:#fff;">Direccion IP</th>
                                    <th style="color:#fff;">Fecha de creacion</th>
                                    <th style="color:#fff;">fecha de modificación</th>                                                                  
                                </thead>
                                <tbody>
                                    @foreach ($audits as $audit)
                                        <tr>
                                            <td style="display: none;">{{ $audit->id }}</td>
                                            <td>{{ $audit->user_type }}</td>
                                            <td>{{ $audit->	user_id }}</td>
                                            <td>{{ $audit->event }}</td>
                                            <td>{{ $audit->auditable_type }}</td>
                                            <td>{{ $audit->auditable_id }}</td>
                                            <td>{{ $audit->old_values }}</td>
                                            <td>{{ $audit->new_values }}</td>
                                            <td>{{ $audit->url }}</td>
                                            <td>{{ $audit->ip_address }}</td>
                                            <td>{{ $audit->created_at }}</td>
                                            <td>{{ $audit->updated_at }}</td>
                                            
                                        </tr>
                                    @endforeach
                                    <!-- <tfoot style="width: 50px;">
                            <tr>
                                <th>Nombre Poste</th>
                                <th>Latitud</th>
                                <th>Longitud</th>
                                <th>Altura</th>
                                <th>Material</th>
                                <th>Estado</th>
                                <th>Comuna</th>
                                <th>Direccion</th>
                                <th>Nivel tension</th>
                                <th>Observacion</th>
                                <th>Fecha de creacion</th>
                            </tr>
                             </tfoot> -->
                                </tbody>
                            </table>

                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <div id="map" style="height: 400px;"></div>
    </section>

    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
 <script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
 <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>



 
    <script>



new DataTable('#postesTable', {
    paging: false,
    scrollCollapse: true,
    scrollY: '500px',
    dom: 'Bfrtip',
    buttons: ['copy', 'csv', 'excel','print'],

  

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
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

    <!-- <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script>

new DataTable('#postesTable');
    </script> -->

    

@endsection






