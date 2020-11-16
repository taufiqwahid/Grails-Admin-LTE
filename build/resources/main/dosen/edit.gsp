<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 11.44
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Tambah Data Dosen</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="dosen" action="update" method="POST" id="${dosen.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama</label>
                    <g:textField type="text" required="" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama" value="${dosen.nama}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">NIP</label>
                    <g:textField type="text" required="" name="nip" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIP Dosen" value="${dosen.nip}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Alamat</label>
                    <g:textField type="text" required="" name="alamat" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Alamat" value="${dosen.alamat}"/>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Jurusan</label>
                    <select name="jurusan" required="" class="form-control" id="exampleFormControlSelect1">
                        <option selected disabled value="${dosen.id}">${dosen.jurusan.nama}</option>
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