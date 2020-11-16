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
        <g:if test="${flash.message}">
        %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
            <div class="container">
                <div class="alert bg-gradient-danger alert-dismissible fade show" role="alert">
                    <strong>Danger : </strong> ${flash.message}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </g:if>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Tabel Nilai Mahasiswa</h3>
                        <g:link action="create">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> Tambah Data</button>
                        </g:link>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                        <thead>
                        <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th>Mata Kuliah</th>
                                <th>NIM</th>
                                <th>Nilai UTS</th>
                                <th>Nilai UAS</th>
                                <th class="text-center">Opsi</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${nilai}" var="n">
                                <tr>
                                    <td class="text-center">${n.id}</td>
                                    <td>${n.matakuliah.nama}</td>
                                    <td>${n.nim}</td>
                                    <td>${n.uts}</td>
                                    <td>${n.uas}</td>
                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${n.id}"><i class="far fa-edit"></i></g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${n.id}"><i class="far fa-trash-alt"></i></g:link></div>
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