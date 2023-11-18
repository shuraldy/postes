<li class="side-menus {{ Request::is('*') ? 'active' : '' }}">
    <a class="nav-link" href="/home">
        <i class=" fas fa-building"></i><span>Dashboard</span>
    </a>
    @can('ver-usuario')
    <a class="nav-link" href="/usuarios">
        <i class=" fas fa-users"></i><span>Usuarios</span>
    </a>
    @endcan
    @can('ver-rol') 
    <a class="nav-link" href="/roles">
        <i class=" fas fa-user-lock"></i><span>Roles</span>
    </a>
    @endcan
    @can('ver-blog') 
    <a class="nav-link" href="/blogs">
        <i class=" fas fa-blog"></i><span>Blogs</span>
   
    @endcan
    @can('consultar')
    <a class="nav-link" href="/consulta">
        <i class=" fa fa-eye"></i><span>Consulta</span>
    </a>
    @endcan

    @can('ver-centro')
    <a class="nav-link" href="/centros">
        <i class=" fa fa-building"></i><span>Centros Comerciales</span>
    </a>
    @endcan
    
    <a class="nav-link" href="/perfil">
        <i class="fa fa-user" aria-hidden="true"></i><span>perfil</span>
    </a>

</li>

