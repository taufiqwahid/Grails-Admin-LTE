<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 11.32
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update Data <g:message code="form.label.jurusan"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="jurusan" action="update" method="POST" id="${jurusan.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nama"/> <g:message code="form.label.jurusan"/></label>
                    <g:textField type="text" required="" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama" value="${jurusan.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.fakultas"/></label>
                    <g:textField type="text" required="" name="fakultas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Fakultas" value="${jurusan.fakultas}"/>
                </div>
            </div>
            <!-- /.card-body -->
            <g:if test="${flash.message}">
            %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
                <div class="container">
                    <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                        <strong>Warning</strong> <g:message code="error.message.edit"/>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </g:if>

            <div class="card-footer float-right">
                %{--                <button type="submit" class="btn btn-primary">Savew</button>--}%
                <g:actionSubmit value="Update" class="btn btn-success"/>
                <g:actionSubmit action="index" value="Batal" class="btn btn-danger"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>