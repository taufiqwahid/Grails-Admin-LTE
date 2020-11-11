<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 15.44
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
                        <h2 class="card-title">Tabel Data Mahasiswa ${jurusan.nama}</h2>
                        <g:link action="create">
                            <button class="btn btn-primary float-right">Tambah Data</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Nama Mahasiswa</th>
                                <th>NIM</th>
                                <th>Jurusan</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${mahasiswa}" var="mhs">
                                <tr>
                                    <td>${mhs.nama}</td>
                                    <td>${mhs.nim}</td>
                                    <td>${jurusan.nama}</td>
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