<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.43
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
                        <h2 class="card-title">Tabel Jadwal Kuliah</h2>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <g:link action="create">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> Tambah Data</button>
                        </g:link>
</sec:ifAllGranted>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <div class="card-body">
                        <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead>
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th><g:message code="table.head.nama" /></th>
                                <th><g:message code="table.head.matakuliah" /></th>
                                <th><g:message code="table.head.hari" /></th>
                                <th><g:message code="table.head.jam" /></th>
                                <th><g:message code="table.head.tahunAkademik" /></th>
                                <th><g:message code="table.head.ruangan" /></th>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <th class="text-center"><g:message code="table.head.opsi" /></th>
</sec:ifAllGranted>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${jadwal}" var="jdw">
                                <tr>
                                    <td class="text-center">${jdw.id}</td>
                                    <td>${jdw.dosen.nama}</td>
                                    <td>${jdw.matakuliah.nama}</td>
                                    <td>${jdw.hari}</td>
                                    <td>${jdw.jam}</td>
                                    <td>${jdw.tahunAkademik.priode}</td>
                                    <td>${jdw.ruangan.kode}</td>
                                <sec:ifAllGranted roles="ROLE_ADMIN">

                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${jdw.id}"><i class="far fa-edit"></i></g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${jdw.id}"><i class="far fa-trash-alt"></i></g:link></div>
                                    </td>
                                </sec:ifAllGranted>
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