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
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${akn.id}">Edit</g:link></div>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalCenter" id="${akn.id}">EDIIIT
                                        </button>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${akn.id}">Hapus</g:link></div>
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </tfoot>
                        </table>



%{--                    <!-- Modal -->--}%
%{--                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">--}%
%{--                        <div class="modal-dialog modal-dialog-centered" role="document">--}%
%{--                            <div class="modal-content">--}%
%{--                                <div class="modal-header">--}%
%{--                                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>--}%
%{--                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
%{--                                        <span aria-hidden="true">&times;</span>--}%
%{--                                    </button>--}%
%{--                                </div>--}%
%{--                                <div class="modal-body">--}%
%{--                                        <g:form action="save"/>--}%
%{--                                        <div class="form-group">--}%
%{--                                            <label for="recipient-name" class="col-form-label">Nama</label>--}%
%{--                                            <input type="text" class="form-control" id="recipient-name" name="nama">--}%
%{--                                            <g:textField name="nama" value="${akunDetail.nama}" class="form-control" id="recipient-name" />--}%
%{--                                        </div>--}%
%{--                                        <div class="form-group">--}%
%{--                                            <label for="recipient-name" class="col-form-label">Email</label>--}%
%{--                                            <input type="email" class="form-control" id="recipient-name" name="email">--}%
%{--                                            <g:textField name="nama" value="${akunDetail.email}" class="form-control" id="recipient-name" />--}%
%{--                                        </div>--}%
%{--                                        <div class="form-group">--}%
%{--                                            <label for="recipient-name" class="col-form-label">Password</label>--}%
%{--                                            <input type="text" class="form-control" id="recipient-name" name="password">--}%
%{--                                            <g:textField name="nama" value="${akunDetail.password}" class="form-control" id="recipient-name" />--}%
%{--                                        </div>--}%
%{--                                </div>--}%
%{--                                <div class="modal-footer">--}%
%{--                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--}%
%{--                                    <g:actionSubmit name="save" value="UPDATE" class="btn btn-primary" />--}%
%{--                                </div>--}%
%{--                            <g:form/>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%



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