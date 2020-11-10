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
                            <button class="btn btn-primary float-right">Tambah Data</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
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
                                <td>${mhs.id}</td>
                                <td>${mhs.nama}</td>
                                <td>${mhs.nim}</td>
                                <td>${mhs.alamat}</td>
                                <td>${mhs.tglLahir}</td>
                                <td>${mhs.noTelp}</td>
                                <td>${mhs.jurusan.nama}</td>
                                <td class="text-center">
                                    <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${mhs.id}">Update</g:link></div>
                                    <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${mhs.id}">Hapus</g:link></div>
                                </td>mhs
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