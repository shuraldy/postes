@extends('layouts.app')

@section('content')

<section class="section">
    <div class="section-header">
        <h3 class="page__heading">Tu información de usuario</h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-striped mt-2">
                            <thead style="background-color:#6777ef">                                     
                                <th style="display: none;">ID</th>
                                <th style="color:#fff;">Nombre</th>
                                <th style="color:#fff;">E-mail</th>
                                <th style="color:#fff;">Rol</th>
                                <th style="color:#fff;">Acciones</th>                                                                   
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="display: none;">{{ auth()->user()->id }}</td>
                                    <td>{{ auth()->user()->name }}</td>
                                    <td>{{ auth()->user()->email }}</td>
                                    <td>
                                        @if(!empty(auth()->user()->getRoleNames()))
                                            @foreach(auth()->user()->getRoleNames() as $rolNombre)                                       
                                                <h5><span class="badge badge-dark">{{ $rolNombre }}</span></h5>
                                            @endforeach
                                        @endif
                                    </td>
                                    <td>
                                        <form method="GET" action="{{ route('usuarios.edit', auth()->user()->id) }}">
                                            @csrf
                                            <button type="submit" class="btn btn-info">Editar</button>
                                        </form>
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>              
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   
@endsection
