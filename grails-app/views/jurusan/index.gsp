<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 11.28
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
                                <th>Nama Jurusan</th>
                                <th>Fakultas</th>
                                <th class="text-center">Opsi</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${jurusan}" var="jrs">
                                <tr>
                                    <td>${jrs.id}</td>
                                    <td><g:link action="detailJurusan" id="${jrs.id}">${jrs.nama}</g:link></td>
                                    <td>${jrs.fakultas}</td>
                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${jrs.id}">Update</g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${jrs.id}">Hapus</g:link></div>
                                    </td>
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