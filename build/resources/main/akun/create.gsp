<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 10.57
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="container">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><g:message code="form.label.tambah"/></h3>
            </div>
        <!-- /.card-header -->
        <!-- form start -->

            <g:form controller="akun"  action="save" method="POST">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1"><g:message code="form.label.username"/></label>
                        <g:textField type="text" value="${fieldValue(bean: akun, field: 'username')}" name="username" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.username')}"/>
                        <g:hasErrors bean="${akun}" field="username">
                            <div class="text-danger">
                                <g:message code="error.message.textField"/>
                            </div>
                        </g:hasErrors>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1"><g:message code="form.label.password"/></label>
                        <g:textField type="text" name="password" value="${fieldValue(bean: akun, field: 'password')}" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.password')}"/>
                        <g:hasErrors bean="${akun}" field="password">
                            <div class="text-danger">
                                <g:message code="error.message.textField"/>
                            </div>
                        </g:hasErrors>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">NOTE : ROLE ACCOUNT = DEFAULT USER  </label>
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
                    <g:actionSubmit value="save" class="btn btn-primary"  />
                </div>
            </g:form>
        </div>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>