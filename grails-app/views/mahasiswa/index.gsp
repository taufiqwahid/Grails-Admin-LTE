<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 05/11/20
  Time: 14.38
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Tabel Data Mahasiswa</h2>
                        <g:link action="create">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> Tambah Data</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">DataTable with default features</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="myTable" class="table table-striped table-bordered table-hover" style="width:100%">
                                <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th>Nama</th>
                                    <th>NIM</th>
                                    <th>Alamat</th>
                                    <th>Tgl Lahir</th>
                                    <th>No Telp</th>
                                    <th>Jurusan</th>
                                    <th class="text-center">Opsi</th>

                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${mahasiswa}" var="mhs">
                                    <tr>
                                        <td class="text-center">${mhs.id}</td>
                                        <td>${mhs.nama}</td>
                                        <td>${mhs.nim}</td>
                                        <td>${mhs.alamat}</td>
                                        <td>${mhs.tglLahir}</td>
                                        <td>${mhs.noTelp}</td>
                                        <td>${mhs.jurusan.nama}</td>
                                        <td class="text-center">
                                            <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${mhs.id}"><i class="far fa-edit"></i></g:link></div>
                                            <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${mhs.id}"><i class="far fa-trash-alt"></i></g:link></div>
                                        </td>
                                    </tr>

                                </g:each>
%{--                                <tfoot>--}%
%{--                                <tr>--}%
%{--                                    <th>Name</th>--}%
%{--                                    <th>Position</th>--}%
%{--                                    <th>Office</th>--}%
%{--                                    <th>Age</th>--}%
%{--                                    <th>Start date</th>--}%
%{--                                    <th>Salary</th>--}%
%{--                                </tr>--}%
%{--                                </tfoot>--}%
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->

<g:render template="/layouts/Footer"/>