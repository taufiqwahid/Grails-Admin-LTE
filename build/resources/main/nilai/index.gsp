<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.37
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
                        <h3 class="card-title">Tabel Nilai Mahasiswa</h3>
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
                                <th>Mata Kuliah</th>
                                <th>NIM</th>
                                <th>Nilai UTS</th>
                                <th>Nilai UAS</th>
                                <th class="text-center">Opsi</th>
                            </tr>n
                            </thead>
                            <tbody>
                            <g:each in="${nilai}" var="n">
                                <tr>
                                    <td>${n.id}</td>
                                    <td>${n.matakuliah.nama}</td>
                                    <td>${n.nim}</td>
                                    <td>${n.uts}</td>
                                    <td>${n.uas}</td>
                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${n.id}">Update</g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${n.id}">Hapus</g:link></div>
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