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
                        <h2 class="card-title"><g:message code="table.card.name"/> <g:message code="table.head.jurusan"/> </h2>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <g:link action="create" params="[lang: params.lang]">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> <g:message code="table.card.tambah"/> </button>
                        </g:link>
</sec:ifAllGranted>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                        <thead>
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th><g:message code="table.head.jurusan"/></th>
                                <th><g:message code="table.head.fakultas"/></th>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <th class="text-center"><g:message code="table.head.opsi"/></th>
</sec:ifAllGranted>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${jurusan}" var="jrs">
                                <tr>
                                    <td class="text-center">${jrs.id}</td>
                                    <td><g:link action="detailJurusan" id="${jrs.id}">${jrs.nama}</g:link></td>
                                    <td>${jrs.fakultas}</td>
                                <sec:ifAllGranted roles="ROLE_ADMIN">

                                    <td class="text-center">
                                        <a class="btn btn-warning text-light" href="${createLink(params: [lang:params.lang],id: jrs.id, action: 'edit', controller:'jurusan')}" ><i class="far fa-edit"></i></a>
                                        <a class="btn btn-danger text-light" href="${createLink(params: [lang:params.lang], id: jrs.id, action: 'delete', controller:'jurusan')}" ><i class="far fa-trash-alt"></i></a>
                                    </td>
                                </sec:ifAllGranted>
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