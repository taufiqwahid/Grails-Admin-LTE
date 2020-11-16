<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.43
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Tambah Mata Kuliah</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->
        <g:form controller="jadwal" action="update" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Nama Dosen</label>
                    <select name="dosen" required="" class="form-control" id="exampleFormControlSelect1">
                        <option disabled selected value="${jadwal.id}">${jadwal.dosen.nama}</option>
                        <g:each in="${dosen}" var="dsn">
                            <option value="${dsn.id}">${dsn.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Mata Kuliah</label>
                    <select name="matakuliah" required="" class="form-control" id="exampleFormControlSelect2">
                        <option disabled selected value="${jadwal.id}">${jadwal.matakuliah.nama}</option>
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Hari</label>
                    <input value="${jadwal.hari}"  required="" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="hari" class="form-control"  placeholder="Masukkan Hari">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Jam</label>
                    <input required value="${jadwal.jam}" required="" type="time" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="jam" class="form-control"  placeholder="Masukkan Hari">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Tahun Akademik</label>
                    <select name="tahunAkademik" required="" class="form-control" id="exampleFormControlSelect5">
                        <option disabled  selected value="${jadwal.tahunAkademikId}">${jadwal.tahunAkademik.priode}</option>
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
                        </g:each>
                    </select>
                </div><div class="form-group">
                <label for="exampleFormControlSelect2">Ruangan</label>
                <select name="ruangan"required="" class="form-control" id="exampleFormControlSelect6">
                    <option disabled selected value="${jadwal.ruanganId}">${jadwal.ruangan.kode}</option>
                    <g:each in="${ruangan}" var="rgn">
                        <option value="${rgn.id}">${rgn.kode}</option>
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