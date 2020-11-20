<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.07
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{--CONTENTNYA--}%

<div class="container">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Update Data Priode</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <br><br>
        <div class="container">
            <div class="container">
                <g:if test="${flash.message}">
                %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
                    <div class="container">
                        <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                            <strong>Warning</strong> <g:message code="error.message.edit"/>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                </g:if>
                <g:form controller="tahunAkademik" action="update" method="POST" class="form-inline">
                    <label class="my-1 mr-2" for="inlineFormCustomSelectPref"><g:message code="form.label.tahunAkademik"/> Priode</label>
                    <select name="priode" class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                        <option disabled value="${tahun.id}" selected>${tahun.priode}</option>
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