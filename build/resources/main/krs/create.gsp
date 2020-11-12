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
            <h3 class="card-title">Tambah KRS</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->
        <g:if test="${flash.message}">
            <div class="text-center text-red" role="status">${flash.message}</div><br/>
        </g:if>
        <g:form controller="krs" action="save" method="POST">
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Mahasiswa</label>
                    <select name="mahasiswa" class="form-control" id="exampleFormControlSelect1">
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Mata Kuliah</label>
                    <select name="matakuliah" class="form-control" id="exampleFormControlSelect2">
                        <g:each in="${matkul}" var="mk">
                            <option value="${mk.id}">${mk.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Tahun Akademik</label>
                    <select name="tahunAkademik" class="form-control" id="exampleFormControlSelect3">
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect4">Penasehat Akademik</label>
                    <select name="penasehatAkademik" class="form-control" id="exampleFormControlSelect4">
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