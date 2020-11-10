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
            <h3 class="card-title">Update Data Jurusan</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="jurusan" action="update" method="POST" id="${jurusan.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Jurusan</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama" value="${jurusan.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Fakultas</label>
                    <g:textField type="text" name="fakultas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Fakultas" value="${mahasiswa.fakultas}"/>
                </div>
            </div>
            <!-- /.card-body -->
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