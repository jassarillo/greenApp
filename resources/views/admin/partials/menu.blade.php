@php
    $r = \Route::current()->getAction();
    $route = (isset($r['as'])) ? $r['as'] : '';
@endphp

<li class="nav-item mT-30">
    <a class="sidebar-link {{ starts_with($route, ADMIN . '.dash') ? 'active' : '' }}" href="{{ route(ADMIN . '.dash') }}">
        <span class="icon-holder">
            <i class="c-blue-500 ti-home"></i>
        </span>
        <span class="title">Tablero</span>
    </a>
</li>
<li class="nav-item">
    <a class="sidebar-link {{ starts_with($route, ADMIN . '.users') ? 'active' : '' }}" href="{{ route(ADMIN . '.users.index') }}">
        <span class="icon-holder">
            <i class="c-brown-500 ti-user"></i>
        </span>
        <span class="title">Usuario</span>
    </a>
</li>
<li class="nav-item">
    <a class="sidebar-link" href="../eventos">
        <span class="icon-holder">
            <i class="c-brown-500 glyphicon glyphicon-list"></i>
        </span>
        <span class="title">Eventos</span>
    </a>
</li>
<!--<li class="nav-item">
    <a class="sidebar-link {{ starts_with($route, ADMIN . '.users') ? 'active' : '' }}" href="{{ route(ADMIN . '.users.index') }}">
        <span class="icon-holder">
            <i class="c-brown-500 glyphicon glyphicon-list"></i>
        </span>
        <span class="title">Eventos</span>
    </a>
</li>-->
