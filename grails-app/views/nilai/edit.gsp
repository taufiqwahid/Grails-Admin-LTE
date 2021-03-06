<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.39
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update Nilai <g:message code="form.label.mahasiswa"/></h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="nilai" action="update" method="POST" id="${nilai.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.matakuliah"/></label>
                    <select name="matakuliah" required="" class="form-control" id="exampleFormControlSelect1">
                        <option value="${nilai.matakuliah.id}">${nilai.matakuliah.nama}</option>
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.nim"/></label>
                    <select name="mahasiswa" required="" class="form-control" id="exampleFormControlSelect7">
                        <option selected disabled value="${mahasiswa.id}">${nilai.mahasiswa.nim}</option>
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nim}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nilaiUts"/></label>
                    <g:textField type="text" required="" name="uts" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nilai UTS" value="${nilai.uts}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nilaiUas"/></label>
                    <g:textField type="text" required="" name="uas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nilai UAS" value="${nilai.uas}"/>
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
                <g:actionSubmit value="Update" onclick="return confirm('${message(code: 'alert.message.edit')}')" class="btn btn-success"/>
                <g:actionSubmit action="index" value="Batal" class="btn btn-danger"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>