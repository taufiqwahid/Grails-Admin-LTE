<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.39
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Update Nilai Mahasiswa</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="nilai" action="update" method="POST" id="${nilai.id}">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Mata Kuliah</label>
                    <select name="matakuliah" class="form-control" id="exampleFormControlSelect1">
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">NIM Mahasiswa</label>
                    <select name="nim" class="form-control" id="exampleFormControlSelect7">
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nim}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">NIM</label>
                    <g:textField type="text" name="nim" class="form-control" id="exampleInputEmail1" placeholder="Masukkan NIP Dosen" value="${nilai.nim}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">UTS</label>
                    <g:textField type="text" name="uts" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nilai UTS" value="${nilai.uts}"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">UAS</label>
                    <g:textField type="text" name="uas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nilai UAS" value="${nilai.uas}"/>
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