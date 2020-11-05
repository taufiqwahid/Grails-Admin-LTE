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
                        <h3 class="card-title">DataTable with minimal features & hover style</h3>
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
                                <th>Jurusan</th>
                                <th>Stambuk</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${mahasiswa}" var="mhs">
                            <tr>
                                <td>${mhs.id}</td>
                                <td>${mhs.nama}</td>
                                <td>${mhs.jurusan}</td>
                                <td>${mhs.stambuk}</td>
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