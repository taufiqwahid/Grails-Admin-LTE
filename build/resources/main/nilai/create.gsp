<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.51
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
  <div class="card card-primary">
    <div class="card-header">
      <h3 class="card-title">Tambah Data Nilai</h3>
    </div>
  <!-- /.card-header -->
  <!-- form start -->
    <g:if test="${flash.message}">
      <div class="text-center text-red" role="status">${flash.message}</div><br/>
    </g:if>
    <g:form controller="nilai" action="save" method="POST">
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
          <label for="exampleInputEmail1">UTS</label>
          <g:textField type="text" name="uts" class="form-control" id="exampleInputEmail1" placeholder="Masukkan UTS "/>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">UAS</label>
          <g:textField type="text" name="uas" class="form-control" id="exampleInputEmail1" placeholder="Masukkan UAS"/>
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