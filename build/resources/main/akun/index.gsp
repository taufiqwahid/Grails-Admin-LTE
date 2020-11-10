<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 10.54
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
                        <h3 class="card-title">Tabel Data Akun</h3>
                        <g:link action="create">
                            <button class="btn btn-primary float-right">Tambah Akun</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama</th>
                                <th>Emal</th>
                                <th>Password</th>
                                <th>Tanggal Buat</th>
                                <th class="text-center">Opsi</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${akun}" var="akn">
                                <tr>
                                    <td>${akn.id}</td>
                                    <td>${akn.nama}</td>
                                    <td>${akn.email}</td>
                                    <td>${akn.password}</td>
                                    <td>${akn.tanggal}</td>
                                    <td class="text-center">
                                        <div class="btn btn-warning">
                                            <g:link action="edit" class="text-light" id="${akn.id}">Update</g:link>
                                        </div>
                                        <div class="btn btn-danger">
                                            <g:link action="delete" class="text-light" id="${akn.id}">Hapus</g:link>
                                        </div>
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </tfoot>
                        </table>
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