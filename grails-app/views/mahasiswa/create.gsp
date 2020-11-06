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
            <h3 class="card-title">Tambah Data Mahasiswa</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="mahasiswa" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Jurusan</label>
                    <g:textField type="text" name="jurusan" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Jurusan"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Stambuk</label>
                    <g:textField type="text" name="stambuk" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Stambuk"/>
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