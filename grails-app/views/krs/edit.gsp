<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 09.53
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Update KRS Mahasiswa</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->

        <g:form controller="krs" action="update" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Mahasiswa</label>
                    <select name="mahasiswa" required="" class="form-control" id="exampleFormControlSelect1">
                        <option disabled selected  value="${krs.mahasiswa.id}">${krs.mahasiswa.nama}</option>
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Mata Kuliah</label>
                    <select name="matakuliah" required="" class="form-control" id="exampleFormControlSelect2">
                        <option  disabled selected value="${krs.matakuliah.id}">${krs.matakuliah.nama}</option>
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Tahun Akademik</label>
                    <select name="tahunAkademik" class="form-control" id="exampleFormControlSelect3">
                        <option disabled selected value="${krs.tahunAkademik.id}">${krs.tahunAkademik.priode}</option>
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect4">Penasehat Akademik</label>
                    <select name="penasehatAkademik" required="" class="form-control" id="exampleFormControlSelect4">
                        <option selected disabled value="${krs.penasehatAkademik.dosen.id}">${krs.penasehatAkademik.dosen.nama}...</option>
                        <g:each in="${penasehatAkademik}" var="pa">
                            <option value="${pa.dosen.id}">${pa.dosen.nama}</option>
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