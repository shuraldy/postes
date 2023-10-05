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
    </a>
    @endcan
    @can('ver-poste')
    <a class="nav-link" href="/postes">
        <i class=" fa fa-info"></i><span>Ingreso de Postes</span>
    </a>
    @endcan
    @can('consultar')
    <a class="nav-link" href="/consulta">
        <i class=" fa fa-eye"></i><span>Consulta</span>
    </a>
    @endcan

    </a>
    @can('ver-mapa')
    <a class="nav-link" href="/mapa">
        <i class=" fa fa-map"></i><span>Mapa</span>
    </a>
    @endcan

    <!-- @can('ver-auditoria')
    <a class="nav-link" href="/auditoria">
        <i class=" fa fa-search"></i><span>Auditoria</span>
    </a>
    @endcan -->

</li>

