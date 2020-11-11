<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 09.53
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
                        <h2 class="card-title">Tabel Mata Kuliah</h2>
                        <g:link action="create">
                            <button class="btn btn-primary float-right">Tambah Data</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Nama Mahasiswa</th>
                                <th>Matakuliah</th>
                                <th>Tahun Akademik</th>
                                <th>Penasehat Akademik</th>
                                <th class="text-center">Opsi</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${krs}" var="pa">
                                <tr>
                                    <td class="text-center">${pa.id}</td>
                                    <td>${pa.mahasiswa.nama}</td>
                                    <td>${pa.matakuliah.nama}</td>
                                    <td>${pa.tahunAkademik.priode}</td>
                                    <td>${pa.penasehatAkademik.dosen.nama}</td>
                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${pa.id}">Update</g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${pa.id}">Hapus</g:link></div>
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