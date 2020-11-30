<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 27/11/20
  Time: 14.22
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<!-- Main content -->
<section class="content" >
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
                        <h1 class="text-center"><u>KRS</u></h1>
                        <g:link action="index" controller="mhsKrs" params="[lang: params.lang]">
                            <button class="btn m-1 btn-primary float-right"><i class="fa fa-plus"></i> <g:message code="table.head.krs"/>  </button>
                        </g:link>
                        <g:link action="edit" controller="mhsKrs" params="[lang: params.lang]">
                            <button class="btn btn-warning m-1 text-white float-right"><i class="fa fa-edit"></i> <g:message code="default.button.edit.label"/>  </button>
                        </g:link>
                        <button onclick="window.print()">PRINT</button>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="pdfPageKrs" class="table table-bordered dt-responsive nowrap" style="width:100%">
                            <thead class="thead-dark">
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th class="text-center"><g:message code="table.head.nama"/> </th>
                                <th class="text-center"><g:message code="table.head.bebanSks"/> </th>
                                <th class="text-center"><g:message code="table.head.semester"/></th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${mhsKrs}" var="mk">
                                <tr>
                                    <td class="text-center">${mk.id}</td>
                                    <td class="text-center">${mk.matakuliah.nama}</td>
                                    <td class="text-center">${mk.matakuliah.sks}</td>
                                    <td class="text-center">${mk.matakuliah.semester}</td>
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