<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.51
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
  <div class="card card-primary">
    <div class="card-header">
      <h3 class="card-title">Tambah Data Nilai</h3>
    </div>
  <!-- /.card-header -->
  <!-- form start -->
    <g:form controller="nilai" action="save" method="POST">
      <div class="card-body">
        <div class="form-group">
          <label for="exampleFormControlSelect1"><g:message code="form.label.matakuliah"/></label>
          <select name="matakuliah" class="form-control" id="exampleFormControlSelect1">
            <g:each in="${matkul}" var="mk">
              <option value="${mk.id}">${mk.nama}</option>
            </g:each>
          </select>
        </div>

        <div class="form-group">
          <label for="exampleFormControlSelect1"><g:message code="form.label.nip"/></label>
          <select name="nim" class="form-control" id="exampleFormControlSelect7">
            <g:each in="${mahasiswa}" var="mhs">
              <option value="${mhs.id}">${mhs.nim}</option>
            </g:each>
          </select>
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1"><g:message code="form.label.nilaiUts"/></label>
          <g:textField type="text" name="uts" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.nilaiUts')} "/>
          <g:hasErrors bean="${nilai}" field="uts">
            <div class="text-danger">
              <g:message code="error.message.textField"/>
            </div>
          </g:hasErrors>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1"><g:message code="form.label.nilaiUas"/></label>
          <g:textField type="text" name="uas" class="form-control" id="exampleInputEmail1" placeholder="${message(code: 'input.placeholder.nilaiUas')}"/>
          <g:hasErrors bean="${nilai}" field="uas">
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