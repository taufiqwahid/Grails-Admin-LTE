<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 11.51
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h2 class="card-title">Update <g:message code="form.label.ruangan"/></h2>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="ruangan" action="update" method="POST" id="${ruangan.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1"><g:message code="form.label.ruangan"/></label>
                    <g:textField  required="" type="text" name="kode" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Kode Ruangan" value="${ruangan.kode}"/>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1"><g:message code="form.label.jurusan"/></label>
                    <select name="jurusan" required="" class="form-control" id="exampleFormControlSelect1">
                        <option value="${ruangan.jurusan.id}">${ruangan.jurusan.nama}</option>
                        <g:each in="${jurusan}" var="jrs">
                            <option value="${jrs.id}">${jrs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2"><g:message code="form.label.matakuliah"/></label>
                    <select required="" name="matakuliah" class="form-control" id="exampleFormControlSelect2">
                        <option value="${ruangan.matakuliah.id}">${ruangan.matakuliah.nama}</option>
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
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
                <g:actionSubmit value="Update" class="btn btn-success"/>
                <g:actionSubmit action="index" value="Batal" class="btn btn-danger"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>