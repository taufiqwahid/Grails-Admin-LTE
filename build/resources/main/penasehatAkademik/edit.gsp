<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 18.07
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

        <g:form controller="penasehatAkademik" action="update" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Mahasiswa</label>
                    <select name="mahasiswa" class="form-control" id="exampleFormControlSelect1">
                        <option value="${penasehatAkademik.id}">${penasehatAkademik.mahasiswa.nama}...</option>
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Dosen</label>
                    <select name="dosen" class="form-control" id="exampleFormControlSelect2">
                        <option value="${penasehatAkademik.id}">${penasehatAkademik.dosen.nama}...</option>
                        <g:each in="${dosen}" var="dsn">
                            <option value="${dsn.id}">${dsn.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Jurusan</label>
                    <select name="tahunAkademik" class="form-control" id="exampleFormControlSelect3">
                        <option value="${penasehatAkademik.id}">${penasehatAkademik.tahunAkademik.priode}...</option>
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
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