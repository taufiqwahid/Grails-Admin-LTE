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
            <h2 class="card-title">Tambah Ruangan</h2>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="ruangan" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Kode Ruangan</label>
                    <g:textField type="text" name="kode" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Kode Ruangan"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Ruangan</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Ruangan"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Lantai</label>
                    <g:textField type="text" name="lantai" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Lantai"/>
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