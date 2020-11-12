<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 16.34
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Tambah Priode</h3>
        </div>
    <!-- /.card-header -->
    <!-- form start -->
        <g:if test="${flash.message}">
            <br/><div class="text-center text-red" role="status">${flash.message}</div>
        </g:if>
        <br><br>
        <div class="container">
            <div class="container">
                <g:form controller="tahunAkademik" action="save" method="POST" class="form-inline">
                    <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tahun Akademik Priode</label>
                    <select name="priode" class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                        <option selected disabled>Tahun...</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                    </select>
                    <g:actionSubmit value="save" class="btn btn-success my-1"/>
                </g:form>
            </div>
        </div>
        <br><br>
    </div>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>