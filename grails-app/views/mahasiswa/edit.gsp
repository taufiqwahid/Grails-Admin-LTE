<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 11.47
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update Data Mahasiswa</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="mahasiswa" action="update" method="POST" id="${mahasiswa.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama</label>
                    <g:textField type="text"  required="" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama" value="${mahasiswa.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">NIM</label>
                    <g:textField type="text" required="" name="nim" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIM" value="${mahasiswa.nim}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Alamat</label>
                    <g:textField type="text" required="" name="alamat" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Alamat" value="${mahasiswa.alamat}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Tanggal Lahir</label>
                    <g:textField type="text"  required="" name="tglLahir" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Tanggal Lahir" value="${mahasiswa.tglLahir}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">No Telepon</label>
                    <g:textField type="text" required="" name="noTelp" class="form-control" id="exampleInputEmail1" placeholder="Masukkan No Telepon " value="${mahasiswa.noTelp}"/>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Jurusan</label>
                    <select name="jurusan" required="" class="form-control" id="exampleFormControlSelect1">
                        <option value="${mahasiswa.jurusan.id}">${mahasiswa.jurusan.nama}</option>
                        <g:each in="${jurusan}" var="jrs">
                            <option value="${jrs.id}">${jrs.nama}</option>
                        </g:each>
                    </select>
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