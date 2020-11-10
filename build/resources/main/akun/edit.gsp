<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 09.58
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>
%{--CONTENT MAIN--}%
<div class="container">
    <div class="container">
        <div class="card card-success">
            <div class="card-header">
                <h3 class="card-title">Update Akun</h3>
            </div>
        <!-- /.card-header -->
        <!-- form start -->
            <g:form controller="akun" action="update" method="POST" id="${akun.id}">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nama</label>
                        <g:textField type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Lengkap" value="${akun.nama}"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <g:textField type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Email" value="${akun.email}" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <g:textField type="password" name="password" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Password" value="${akun.password}"/>
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
</div>
%{--CONTENT CLOSE--}%
<g:render template="/layouts/Footer"/>