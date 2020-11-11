<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.58
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
                        <h2 class="card-title">Table Ruangan</h2>
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
                                <th>Kode Ruangan</th>
                                <th>Jurusan</th>
                                <th>Matakuliah</th>
                                <th class="text-center">Opsi</th>

                            </tr>
                            </thead>
                            <tbody>
                                    <g:each in="${ruangan}" var="rgn">
                                <tr>
                                            <td>${rgn.id}</td>
                                            <td>${rgn.kode}</td>
                                            <td>${rgn.jurusan.nama}</td>
                                            <td>${rgn.matakuliah.nama}</td>

                                            <td class="text-center">
                                                <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${rgn.id}">Update</g:link></div>
                                                <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${rgn.id}">Hapus</g:link></div>
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