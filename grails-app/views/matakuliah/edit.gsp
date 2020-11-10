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
            <h3 class="card-title">Update Mata Kuliah</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="mataKuliah" action="update" method="POST" id="${matkul.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Matakuliah</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Matakuliah" value="${matkul.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">SKS</label>
                    <g:textField type="number" name="sks" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Jumlah SKS" value="${matkul.sks}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Semester</label>
                    <g:textField type="text" name="semester" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Semester" value="${matkul.semester}"/>
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