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
            <h2 class="card-title">Update Ruangan</h2>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="ruangan" action="update" method="POST" id="${ruangan.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Kode Ruangan</label>
                    <g:textField type="text" name="kode" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Kode Ruangan" value="${ruangan.kode}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Ruangan</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Ruangan" value="${ruangan.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Lantai</label>
                    <g:textField type="text" name="lantai" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Lantai" value="${ruangan.lantai}"/>
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