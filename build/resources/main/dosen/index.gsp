<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.59
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
                        <h3 class="card-title">Tabel Data Dosen</h3>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <g:link action="create">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> <g:message code="table.card.tambah"/></button>
                        </g:link>
</sec:ifAllGranted>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead>
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th><g:message code="table.head.nama"/> </th>
                                <th><g:message code="table.head.nip"/></th>
                                <th><g:message code="table.head.alamat"/></th>
                                <th><g:message code="table.head.jurusan"/></th>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <th class="text-center"><g:message code="table.head.opsi"/> </th>
</sec:ifAllGranted>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${dosen}" var="dsn">
                                <tr>
                                    <td class="text-center">${dsn.id}</td>
                                    <td>${dsn.nama}</td>
                                    <td>${dsn.nip}</td>
                                    <td>${dsn.alamat}</td>
                                    <td>${dsn.jurusan.nama}</td>
                                <sec:ifAllGranted roles="ROLE_ADMIN">

                                    <td class="text-center">
                                        <div class="btn btn-warning"><g:link action="edit" class="text-light" id="${dsn.id}"><i class="far fa-edit"></i></g:link></div>
                                        <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${dsn.id}"><i class="far fa-trash-alt"></i></g:link></div>
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