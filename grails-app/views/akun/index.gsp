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
                                <th>Tanggal Buat/th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${akun}" var="akun">dosen
                                <tr>
                                    <td>${akun.id}</td>
                                    <td>${akun.nama}</td>
                                    <td>${akun.email}</td>
                                    <td>${akun.password}</td>
                                    <td>${akun.tanggal}</td>
                                </tr>
                            </g:each>
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