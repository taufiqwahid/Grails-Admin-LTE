<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 05/11/20
  Time: 14.51
--%>


<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><g:message code="form.label.tambah"/> <g:message code="form.label.mahasiswa"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->


        <g:form controller="mahasiswa" action="save" method="POST">

            <div class="card-body">
                <div class="form-group" >
                    <label for="exampleInputEmail1"><g:message code="form.label.nama"/></label>
                    <g:textField type="text" value="${fieldValue(bean:mahasiswa ,field:'nama')}" name="nama" class="form-control" id="exampleInputEmail1 createNama" placeholder="${message(code: 'input.placeholder.nama')}/>
                    <g:hasErrors bean="${mahasiswa}" field="nama">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nip"/></label>
                    <g:textField type="text" value="${fieldValue(bean: mahasiswa, field: 'nim')}" name="nim" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.nim')}"/>
                    <g:hasErrors bean="${mahasiswa}" field="nim">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.alamat"/></label>
                    <g:textField type="text" value="${fieldValue(bean: mahasiswa, field: 'alamat')}" name="alamat" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.alamat')}"/>
                    <g:hasErrors bean="${mahasiswa}" field="alamat">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.tglLahir"/></label>
                    <input type="date" class="form-control" value="${fieldValue(bean: mahasiswa, field: 'tglLahir')}" id="exampleInputEmail1" aria-describedby="emailHelp" name="tglLahir" class="form-control"  placeholder="${message(code: 'input.placeholder.tglLahir')}">
                    <g:hasErrors bean="${mahasiswa}" field="tglLahir">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.notelp"/></label>
                    <g:textField type="number" name="noTelp" value="${fieldValue(bean: mahasiswa, field: 'noTelp')}" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.notelp')}"/>
                    <g:hasErrors bean="${mahasiswa}" field="noTelp">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                        <label for="exampleFormControlSelect1"><g:message code="form.label.jurusan"/></label>
                        <select name="jurusan" class="form-control" id="exampleFormControlSelect1">
                            <option value="NULL">Pilih...</option>
                            <g:each in="${jurusan}" var="jrs">
                                <option value="${jrs.id}">${jrs.nama}</option>
                            </g:each>
                        </select>
                    <g:hasErrors bean="${mahasiswa}" field="jurusan">
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
                <g:actionSubmit  value="save" id="createButton"  class="btn btn-primary"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>