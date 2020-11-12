<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 10.57
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="container">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah Akun</h3>
            </div>
        <!-- /.card-header -->
        <!-- form start -->
            <g:if test="${flash.message}">
                <br/><div class="text-center text-red" role="status">${flash.message}</div>
            </g:if>
            <g:form controller="akun" action="save" method="POST">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nama</label>
                        <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Lengkap"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <g:textField type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Email"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <g:textField type="password" name="password" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Password"/>
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
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>