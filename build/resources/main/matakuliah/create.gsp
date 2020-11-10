<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.59
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Tambah Mata Kuliah</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="mataKuliah" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Matakuliah</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Matakuliah"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">SKS</label>
                    <g:textField type="number" name="sks" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Jumlah SKS"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Semester</label>
                    <g:textField type="text" name="semester" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Semester"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Dosen</label>
                    <g:textField type="text" name="dosen" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Dosen"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Ruangan</label>
                    <g:textField type="text" name="ruangan" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Ruangan"/>
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                %{--                <button type="submit" class="btn btn-primary">Savew</button>--}%
                <g:actionSubmit value="save" class="btn btn-primary"/>
            </div>
        </g:form>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>