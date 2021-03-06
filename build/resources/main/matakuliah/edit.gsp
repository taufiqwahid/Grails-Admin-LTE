<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 11.50
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update <g:message code="form.label.matakuliah"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="mataKuliah" action="update" method="POST" id="${matkul.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.matakuliah"/></label>
                    <g:textField type="text" required="" name="nama" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.name')}" value="${matkul.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.bebanSks"/></label>
                    <g:textField type="number" required="" name="sks" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.matakuliah')}" value="${matkul.sks}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.semester"/></label>
                    <g:textField type="text" required="" name="semester" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.semester')}" value="${matkul.semester}"/>
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
                <g:actionSubmit  value="Update" onclick="return confirm('${message(code: 'alert.message.edit')}')" class="btn btn-success"/>
                <g:actionSubmit action="index" value="Batal" class="btn btn-danger"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>