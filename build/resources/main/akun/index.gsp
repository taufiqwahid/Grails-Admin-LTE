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
                        <h3 class="card-title"><g:message code="table.card.name"/> <g:message code="table.head.akun"/> </h3>
                        <sec:ifAllGranted roles="ROLE_ADMIN">

                         <g:link action="create" params="[lang:params.lang]">
                            <button class="btn btn-primary float-right"><i class="fa fa-plus"></i> <g:message code="form.label.tambah"/> </button>
                        </g:link>
                        </sec:ifAllGranted>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead>
                            <tr class="table-primary rounded">
                                <th class="text-center">#</th>
                                <th class="text-center"><g:message code="table.head.username" /></th>
                                <th class="text-center"><g:message code="table.head.role" /></th>
                                <sec:ifAllGranted roles="ROLE_ADMIN">
                                    <th class="text-center"><g:message code="table.head.opsi"/> </th>
                                </sec:ifAllGranted>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${user}" var="usr">
                                <tr>
                                    <td class="text-center">${usr.user.id}</td>
                                    <td class="text-center">${usr.user.username}</td>
                                    <td class="text-center">${usr.role.authority}</td>
                                    <sec:ifAllGranted roles="ROLE_ADMIN">
                                        <td class="text-center">
                                            <div class="btn btn-warning"><g:link params="[lang:params.lang]" action="edit" class="text-light" id="${usr.user.id}"><i class="far fa-edit"></i></g:link></div>
%{--                                            <div class="btn btn-danger"><g:link action="delete" class="text-light" params="[lang: params.lang]" id="${usr.user.id}" ><i class="far fa-trash-alt"></i></g:link></div>--}%
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