<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 26/11/20
  Time: 10.49
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

    <g:form action="create" controller="mhsKrs">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
            Launch demo modal
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="customRadioInline1" name="semester" value="ganjil" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioInline1">Semester Ganjil</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="customRadioInline2" name="semester" value="genap" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioInline2">Semester Genap</label>
                        </div>                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <g:actionSubmit value="Submit" class="btn btn-primary"/>
                    </div>
                </div>
            </div>
        </div>
    </g:form>

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
                            <h2 class="card-title"><g:message code="table.card.name"/> <g:message code="table.head.matakuliah"/> </h2>
                            <g:actionSubmit  value="Save" action="saveKrs" class="btn btn-success float-right" />
                            <br><br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="semester" id="exampleRadios1" value="ganjil" required="required" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Semester Ganjil
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="semester" id="exampleRadios2" value="genap">
                                <label class="form-check-label" for="exampleRadios2">
                                    Semester Genap
                                </label>
                            </div>

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
                                            <input id="pilihanMatkul" class="pilihanMatkul" value="${mk.id}" type="checkbox" name="mataKuliah" data-sks="${mk.sks}">
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