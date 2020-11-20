<body class="hold-transition sidebar-mini">
<div class="wrapper">

<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fa fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="${createLink(params: [lang: params.lang], controller: 'dashboard', action: 'index')}" class="nav-link"><i class="fa fa-home"></i> Dashboard</a>
        </li>
    </ul>

    <div class="btn-group navbar-nav ml-auto">
        <button type="button" class="btn btn-danger bg-white border-white"><g:message code="navbar.lang.in"/> </button>
        <button type="button" class="btn btn-danger dropdown-toggle bg-white border-white dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <div class="dropdown-menu ">
            <a class="dropdown-item" href="${createLink(params: [lang:'in'])}">Indonesia</a>
            <a class="dropdown-item" href="${createLink(params: [lang:'en'])}">English</a>
        </div>
    </div>

%{--    <div class="btn-group">--}%
%{--        <button type="button" class="btn btn-danger">Bahasa</button>--}%
%{--        <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--}%
%{--            <span class="sr-only">Toggle Dropdown</span>--}%
%{--        </button>--}%
%{--        <div class="dropdown-menu">--}%
%{--            <a class="dropdown-item" href="#">Action</a>--}%
%{--            <a class="dropdown-item" href="#">Another action</a>--}%
%{--            <a class="dropdown-item" href="#">Something else here</a>--}%
%{--            <div class="dropdown-divider"></div>--}%
%{--            <a class="dropdown-item" href="#">Separated link</a>--}%
%{--        </div>--}%
%{--    </div>--}%
</nav>
<!-- /.navbar -->