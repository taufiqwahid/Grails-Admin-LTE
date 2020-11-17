<!-- Main Sidebar Container -->
<aside class="main-sidebar  bg-navy elevation-4 bg-dark">
    <!-- Brand Logo -->
    <a href="/dashboard/" class="brand-link text-center">
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

                <li class="nav-item">
                    <a href="/dosen" class="nav-link text-light">
                        <i class="fa fa-user-graduate"></i>
                        <p>
                            Dosen
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/mahasiswa" class="nav-link text-light">
                       <i class="fa fa-users"></i>
                        <p>
                            Mahasiswa
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/mataKuliah" class="nav-link text-light">
                        <i class="fa fa-list-alt"></i>
                        <p>
                            Matakuliah
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/ruangan" class="nav-link text-light">
                        <i class="fa fa-laptop-house"></i>
                        <p>
                            Ruangan
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="/jurusan" class="nav-link align-bottom text-light">
                        <i class="fa fa-university"></i>
                        <p>
                            Jurusan
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/krs" class="nav-link align-bottom text-light">
                        <i class="fas fa-book-open"></i>
                        <p>
                            KRS
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/nilai" class="nav-link align-bottom text-light">
                        <i class="fa fa-poll"></i>
                        <p>
                            Nilai
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/jadwal" class="nav-link align-bottom text-light">
                        <i class="fa fa-calendar-alt"></i>
                        <p>
                            Jadwal
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/penasehatAkademik" class="nav-link align-bottom text-light">
                        <i class="fa fa-user-shield"></i>
                        <p>
                            Penasehat Akademik
                        </p>
                    </a>
                </li>
            <sec:ifAllGranted roles="ROLE_ADMIN">

                <li class="nav-item">
                    <a href="/tahunAkademik" class="nav-link align-bottom text-light">
                        <i class="fas fa-calendar-week"></i>
                        <p>
                            Tahun Akademik
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/akun" class="nav-link align-bottom text-light">
                        <i class="fa fa-user"></i>
                        <p>
                            Akun
                        </p>
                    </a>
                </li>
            </sec:ifAllGranted>
                <li class="nav-item btn-danger rounded">
                    <a href="/logout" class="nav-link align-bottom text-light">
                        <i class="fas fa-sign-out-alt"></i>
                        <p>
                            Logout
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
                <h1 class="text-navy text-center text-bold">Universitas Apalah</h1>
                <div class="row mb-2">
                    <div class="col-sm-6">
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><g:link controller="dashboard">Dashboard</g:link> </li>
                            <li class="breadcrumb-item active text-bold">${controllerName}</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>