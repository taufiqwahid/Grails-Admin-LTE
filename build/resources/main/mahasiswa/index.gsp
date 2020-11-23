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
                        <h2 class="card-title"><g:message code="table.card.name"/> <g:message code="table.head.mahasiswa"/> </h2>
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
                                <tr class="table-primary rounded">
                                    <th class="text-center">#</th>
                                    <th><g:message code="table.head.nama"/> </th>
                                    <th><g:message code="table.head.nip"/></th>
                                    <th><g:message code="table.head.jadwal"/></th>
                                    <th><g:message code="table.head.tglLahir"/></th>
                                    <th><g:message code="table.head.notelp"/></th>
                                    <th><g:message code="table.head.jurusan"/></th>
<sec:ifAllGranted roles="ROLE_ADMIN">

    <th class="text-center"><g:message code="table.head.opsi"/></th>
</sec:ifAllGranted>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${mahasiswa}" var="mhs">
                                    <tr>
                                        <td class="text-center">${mhs.id}</td>
                                        <td>${mhs.nama}</td>
                                        <td>${mhs.nim}</td>
                                        <td>${mhs.alamat}</td>
                                        <td>${mhs.tglLahir}</td>
                                        <td>${mhs.noTelp}</td>
                                        <td>${mhs.jurusan.nama}</td>
                                    <sec:ifAllGranted roles="ROLE_ADMIN">

                                        <td class="text-center">
%{--                                        <div class="btn btn-warning" class="btn btn-warning"><g:link action="edit" class="text-light" id="${mhs.id}"><i class="far fa-edit"></i></g:link></div>--}%
                                            <a class="btn btn-warning text-light" onclick="return confirm('Yakin Ingin Mengedit Data ini')" href="${createLink(params: [lang:params.lang],id: mhs.id, action: 'edit', controller:'mahasiswa')}" ><i class="far fa-edit"></i></a>
                                            <a class="btn btn-danger text-light" onclick="return confirm('${message(code: 'alert.message.delete')}')" href="${createLink(params: [lang:params.lang], id: mhs.id, action: 'delete', controller:'mahasiswa')}" ><i class="far fa-trash-alt"></i></a>
%{--                                            <div class="btn btn-danger"><g:link action="delete" class="text-light" id="${mhs.id}"><i class="far fa-trash-alt"></i></g:link></div>--}%
                                        </td>
                                    </sec:ifAllGranted>
                                    </tr>

                                </g:each>
%{--                                <tfoot>--}%
%{--                                <tr class="bg-primary rounded">--}%
%{--                                    <th class="text-center">#</th>--}%
%{--                                    <th>Nama</th>--}%
%{--                                    <th>NIM</th>--}%
%{--                                    <th>Alamat</th>--}%
%{--                                    <th>Tgl Lahir</th>--}%
%{--                                    <th>No Telp</th>--}%
%{--                                    <th>Jurusan</th>--}%
%{--                                    <th class="text-center">Opsi</th>--}%
%{--                                </tr>--}%
%{--                                </tfoot>--}%
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

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