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
                    <label for="exampleInputEmail1">NIM</label>
                    <g:textField type="text" name="nim" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIM"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Alamat</label>
                    <g:textField type="text" name="alamat" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Alamat"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Tanggal Lahir</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="tglLahir" class="form-control"  placeholder="Masukkan anggal Lahir">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">No Telepon</label>
                    <g:textField type="text" name="noTelp" class="form-control" id="exampleInputEmail1" placeholder="Masukkan No Telepon "/>
                </div>
                <div class="form-group">
                        <label for="exampleFormControlSelect1">Jurusan</label>
                        <select name="jurusan" class="form-control" id="exampleFormControlSelect1">
                            <g:each in="${jurusan}" var="jrs">
                                <option value="${jrs.id}">${jrs.nama}</option>
                            </g:each>
                        </select>
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