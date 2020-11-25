<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 25/11/20
  Time: 09.55
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
                    <strong>Danger : </strong> <g:message code="error.message.delete"/>
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
                        <h3 class="card-title"><g:message code="table.card.name"/> <g:message code="table.head.nilai"/> </h3>
                        <sec:ifAllGranted roles="ROLE_ADMIN">

                            <g:link action="create" params="[lang: params.lang]">
                                <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> <g:message code="table.card.tambah"/> </button>
                            </g:link>
                        </sec:ifAllGranted>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table  table-bordered dt-responsive nowrap" style="width:100%">
                            <thead class="thead-dark">
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th><g:message code="table.head.matakuliah"/> </th>
                                <th><g:message code="table.head.nim"/> </th>
                                <th><g:message code="table.head.nilaiUts"/> </th>
                                <th><g:message code="table.head.nilaiUas"/> </th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${nilai}" var="n">
                                <tr>
                                    <td class="text-center">${n.id}</td>
                                    <td>${n.matakuliah.nama}</td>
                                    <td>${n.mahasiswa.nim}</td>
                                    <td>${n.uts}</td>
                                    <td>${n.uas}</td>
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