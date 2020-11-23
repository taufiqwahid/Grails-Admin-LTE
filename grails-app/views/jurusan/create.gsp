<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 11.31
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><g:message code="form.label.tambah"/> <g:message code="form.label.jurusan"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->
        <g:form controller="jurusan" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1"> <g:message code="form.label.nama"/></label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.nama')}"/>
                    <g:hasErrors bean="${jurusan}" field="nama">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.fakultas"/></label>
                    <g:textField type="text" name="fakultas" value="${fieldValue(bean: jurusan, field: 'fakultas')}" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.fakultas')}"/>
                    <g:hasErrors bean="${jurusan}" field="fakultas">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
            </div>
            <!-- /.card-body -->
            <g:if test="${flash.message}">
            %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
                <div class="container">
                    <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                        <strong>Warning</strong> <g:message code="error.message.form"/>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </g:if>
            <div class="card-footer">
                %{--                <button type="submit" class="btn btn-primary">Savew</button>--}%
                <g:actionSubmit value="save" class="btn btn-primary"/>
            </div>
        </g:form>
    </div>

</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>