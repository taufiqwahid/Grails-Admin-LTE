<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 11.31
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Tambah Data Jurusan</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->
        <g:form controller="jurusan" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Jurusan</label>
                    <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Jurusan"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Fakultas</label>
                    <g:textField type="text" name="fakultas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Fakultas"/>
                </div>
            </div>
            <!-- /.card-body -->
            <g:if test="${flash.message}">
            %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
                <div class="container">
                    <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                        <strong>Warning</strong> ${flash.message}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </g:if>
            <div class="card-footer">
                %{--                <button type="submit" class="btn btn-primary">Savew</button>--}%
                <g:actionSubmit value="save" class="btn btn-primary"/>
            </div>
        </g:form>
    </div>

</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>