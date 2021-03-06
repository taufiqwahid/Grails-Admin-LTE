<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.43
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><g:message code="form.label.tambah"/> <g:message code="form.label.jadwal"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="jadwal" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect"><g:message code="form.label.nama"/> <g:message code="form.label.mahasiswa"/></label>
                    <select name="mahasiswa" class="form-control" id="exampleFormControlSelect">
                        <option value="NULL">Pilih...</option>
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.nama"/> <g:message code="form.label.dosen"/></label>
                    <select name="dosen" class="form-control" id="exampleFormControlSelect1">
                        <option value="NULL">Pilih...</option>
                        <g:each in="${dosen}" var="dsn">
                            <option value="${dsn.id}">${dsn.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2"><g:message code="form.label.matakuliah"/></label>
                    <select name="matakuliah" class="form-control" id="exampleFormControlSelect2">
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.hari"/></label>
                    <input  required type="date" value="${fieldValue(bean: jadwal, field: 'hari')}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="hari" class="form-control"  placeholder="${message(code: 'input.placeholder.hari')}">
                    <g:hasErrors bean="${jadwal}" field="hari">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.jam"/></label>
                    <input required type="time" value="${fieldValue(bean: jadwal, field: 'jam')}" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="jam" class="form-control"  placeholder="${message(code: 'input.placeholder.jam')}">
                    <g:hasErrors bean="${jadwal}" field="jam">
                        <div class="text-danger">
                            <g:message code="error.message.textField"/>
                        </div>
                    </g:hasErrors>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.tahunAkademik"/></label>
                    <select name="tahunAkademik" class="form-control" id="exampleFormControlSelect5">
                        <option value="NULL">Pilih...</option>
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2"><g:message code="form.label.ruangan"/></label>
                    <select name="ruangan" class="form-control" id="exampleFormControlSelect6">
                        <option value="NULL">Pilih...</option>
                        <g:each in="${ruangan}" var="rgn">
                            <option value="${rgn.id}">${rgn.kode}</option>
                        </g:each>
                    </select>
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