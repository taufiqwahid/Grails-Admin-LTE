<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 11.44
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update Data Dosen</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="dosen" action="update" method="POST" id="${dosen.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nama"/></label>
                    <g:textField type="text" required="" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama" value="${dosen.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.nip"/></label>
                    <g:textField type="text" required="" name="nip" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIP Dosen" value="${dosen.nip}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.alamat"/></label>
                    <g:textField type="text" required="" name="alamat" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Alamat" value="${dosen.alamat}"/>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.jurusan"/></label>
                    <select name="jurusan" required="" class="form-control" id="exampleFormControlSelect1">
                        <option selected disabled value="${dosen.id}">${dosen.jurusan.nama}</option>
                        <g:each in="${jurusan}" var="jrs">
                            <option value="${jrs.id}">${jrs.nama}</option>
                        </g:each>
                    </select>
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
                <g:actionSubmit onclick="return confirm('${message(code: 'alert.message.edit')}')" value="Update" class="btn btn-success"/>
                <g:actionSubmit action="index" value="Batal" class="btn btn-danger"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>