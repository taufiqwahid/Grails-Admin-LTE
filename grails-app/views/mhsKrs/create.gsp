<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 26/11/20
  Time: 10.49
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <g:if test="${flash.message}">
        %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
            <div class="container">
                <div class="alert bg-gradient-danger alert-dismissible fade show" role="alert">
                    <strong>Danger : </strong> <g:message code="error.message.pilih"/>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </g:if>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <g:form action="saveKrs" controller="mhsKrs">
                        <div class="card-header">
                            <h2 class="text-center text-bold"><u>FORM KRS</u></h2>
                            <g:actionSubmit  value="Save" action="saveKrs" class="btn m-1 btn-primary text-white float-right" />
                            <a href="${createLink(controller: 'mhsKrs', action: 'list', params: [lang:params.lang])}" class="btn text-white btn-warning m-1 float-right"><g:message code="form.button.batal"/></a>
                            <a href="${createLink(controller: 'mhsKrs', action: 'list', params: [lang:params.lang])}" class="btn text-white btn-success"><g:message code="form.show.list"/> </a>
                            <br><br>

%{--                            <div class="row">--}%
%{--                                <div class="input-group mb-3 offset-7 col-5 float-right">--}%
%{--                                    <select class="custom-select" required="required" name="semester" id="inputGroupSelect03" aria-label="Example select with button addon">--}%
%{--                                        <option selected value="${semester}"><p class="text-uppercase">Semeter ${semester}</p></option>--}%
%{--                                    </select>--}%
%{--                                </div>--}%
%{--                            </div>--}%
                            <input type="hidden" value="${semester}" name="semester">
                        </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead class="thead-dark">
                            <tr class="table-primary">
                                <th class="text-center">#</th>
                                <th><g:message code="table.head.nama"/> </th>
                                <th><g:message code="table.head.bebanSks"/> </th>
                                <th><g:message code="table.head.semester"/></th>
                                <th class="text-center"><g:message code="table.head.opsi"/> </th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${matkul}" var="mk">
                                <tr>
                                    <td class="text-center">${mk.id}</td>
                                    <td>${mk.nama}</td>
                                    <td>${mk.sks}</td>
                                    <td>${mk.semester}</td>
                                    <td class="text-center" id="ygDipilih">
                                        <input id="pilihanMatkul" title="" class="pilihanMatkul" value="${mk.id}" type="checkbox" name="mataKuliah" data-sks="${mk.sks}">
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>

                    </g:form>

                    <div>
                        <b>Jumlah Matkul yang di Ambil = <input type="text" value="0" readonly class="jumlahMatkul text-bold bg-transparent border border-0">  </b>
                    </div>
                    <div>
                        <b>Jumlah SKS Yang di ambil    = <input name="total" type="text" readonly value="0" class="text-bold bg-transparent border border-0"></b>
                    </div>
                    <div id="batasSks"></div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->

<g:render template="/layouts/Footer"/>