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
            <h3 class="card-title">Tambah Data Dosen</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="dosen" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">NIP</label>
                    <g:textField type="text" name="nip" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIP Dosen"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Stambuk</label>
                    <g:textField type="text" name="matakuliah" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Matakuliah"/>
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