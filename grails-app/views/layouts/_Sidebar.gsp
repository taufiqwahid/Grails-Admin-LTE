<!-- Main Sidebar Container -->
<aside class="main-sidebar  bg-navy elevation-4 bg-dark">
    <!-- Brand Logo -->
    <a href="${createLink(params: [lang: params.lang], controller: 'dashboard', action: 'index')}" class="brand-link text-center">
%{--    <img src="" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"--}%
%{--         style="opacity: .8">--}%

%{--    <g:img uri="" class="brand-image img-circle elevation-3" style="opacity: .8"/>--}%
    <img src="${resource(dir: 'images', file: 'logo_siakad.png')}" alt="Grails" class="text-center" style="width: 60px"/>
   <div id="titleSidebar" class="brand-text font-weight-light">Sistem Akademik</div>
    %{--    <div>--}%
%{--        <i class="fab fa-stripe-s"></i>--}%
%{--        <i class="fab fa-artstation"></i>--}%
%{--    </div>  --}%
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
    <div class="user-panel mt-3 pb-3 mb-3 d-flex ">
        <div class="image">
%{--            <img src="../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">--}%
            <i class="fa fa-user-astronaut fa-2x"></i>
        </div>
        <div class="info">
            <a href="#" class="d-block text-bold"><sec:username/></a>
        </div>
    </div>
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" id="linkActive" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                <sec:ifAllGranted roles="ROLE_MAHASISWA">

                    <li class="nav-item">
                        <a href="${createLink(params:[lang: params.lang], controller: 'mhsAkun', action: 'index')}" class="nav-link text-light">
                            <i class="fa fa-user-graduate"></i>
                            <p>
                                <g:message code="sidebar.navlink.akun"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${createLink(params:[lang: params.lang], controller: 'mhsKrs', action: 'index')}" class="nav-link text-light">
                            <i class="fa fa-user-graduate"></i>
                            <p>
                                <g:message code="sidebar.navlink.krs"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${createLink(params:[lang: params.lang], controller: 'mhsKhs', action: 'index')}" class="nav-link text-light">
                            <i class="fa fa-user-graduate"></i>
                            <p>
                                <g:message code="sidebar.navlink.khs"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${createLink(params:[lang: params.lang], controller: 'mhsJadwal', action: 'index')}" class="nav-link text-light">
                            <i class="fa fa-user-graduate"></i>
                            <p>
                                <g:message code="sidebar.navlink.jadwal"/>
                            </p>
                        </a>
                    </li>

                </sec:ifAllGranted>
            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER">


                <li class="nav-item">
                    <a href="${createLink(params:[lang: params.lang], controller: 'dosen', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-user-graduate"></i>
                        <p>
                            <g:message code="sidebar.navlink.dosen"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang], controller: 'mahasiswa', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-users"></i>
                        <p>
                            <g:message code="sidebar.navlink.mahasiswa"/>

                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang], controller: 'mataKuliah', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-list-alt"></i>
                        <p>
                            <g:message code="sidebar.navlink.matakuliah"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'ruangan', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-laptop-house"></i>
                        <p>
                            <g:message code="sidebar.navlink.ruangan"/>

                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'jurusan', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-university"></i>
                        <p>
                            <g:message code="sidebar.navlink.jurusan"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'krs', action: 'index')}" class="nav-link text-light">
                        <i class="fas fa-book-open"></i>
                        <p>
                            <g:message code="sidebar.navlink.krs"/>
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'nilai', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-poll"></i>
                        <p>
                            <g:message code="sidebar.navlink.nilai"/>

                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'jadwal', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-calendar-alt"></i>
                        <p>
                            <g:message code="sidebar.navlink.jadwal"/>

                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'penasehatAkademik', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-user-shield"></i>
                        <p>
                            <g:message code="sidebar.navlink.penasehatAkademik"/>

                        </p>
                    </a>
                </li>
            </sec:ifAnyGranted>
            <sec:ifAllGranted roles="ROLE_ADMIN">
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'tahunAkademik', action: 'index')}" class="nav-link text-light">
                        <i class="fas fa-calendar-week"></i>
                        <p>
                            <g:message code="sidebar.navlink.tahunAkademik"/>

                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${createLink(params: [lang: params.lang],controller: 'akun', action: 'index')}" class="nav-link text-light">
                        <i class="fa fa-user"></i>
                        <p>
                            <g:message code="sidebar.navlink.akun"/>

                        </p>
                    </a>
                </li>
            </sec:ifAllGranted>

                <li class="nav-item btn-danger rounded">
                    <a href="${createLink(controller: 'logout', action: 'index')}" class="nav-link text-light">
                    <i class="fas fa-sign-out-alt"></i>
                        <p>
                            <g:message code="sidebar.navlink.logout"/>
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <h1 class="text-navy text-center text-bold"><g:message code="sidebar.navbar.title"/> Apalah</h1>
                <div class="row mb-2">
                    <div class="col-sm-6">
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item">
                                <a href="${createLink(params: [lang: params.lang], controller: 'dashboard', action: 'index')}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active text-bold">${controllerName}</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>