<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 13.52
--%>

<g:render template="/layouts/Header"/>
<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="#"><b>Registration</b></a>
        </div>
        <!-- /.login-logo -->
        <g:if test="${flash.message}">
            <div class="container">
                <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                    <strong>Warning</strong> ${flash.message}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </g:if>
    <nav>
        <div class="nav nav-tabs d-flex justify-content-center" id="nav-tab" role="tablist">
            <a class="nav-item nav-link " id="nav-mahasiswa-tab" data-toggle="tab" href="#nav-mahasiswa" role="tab" aria-controls="nav-mahasiswa" aria-selected="true">Mahasiswa</a>
            <a class="nav-item nav-link" id="nav-dosen-tab" data-toggle="tab" href="#nav-dosen" role="tab" aria-controls="nav-dosen" aria-selected="false">Dosen</a>
            <a class="nav-item nav-link" id="nav-user-tab" data-toggle="tab" href="#nav-user" role="tab" aria-controls="nav-user" aria-selected="false">Admin</a>
        </div>
    </nav>
    <div class="tab-content" id="nav-tabContent">
    %{--    MAHASISWA--}%
        <div class="tab-pane fade show active" id="nav-mahasiswa" role="tabpanel" aria-labelledby="nav-mahasiswa-tab">
        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body rounded-lg login-card-body">
                <g:form name="formMahasiswa" controller="register" action="mhsSave" method="post" >
    <p class="aaa"></p>
                    <div class="form-group mb-3">
                        <div class="row">

                            <div class="col-1">
                                <span class="fa fa-user"></span>
                            </div>
                            <div class="col-11">
                                <input name="username" type="text" class="form-control username" placeholder="Username" minlength="4" required>
                            </div>
                        </div>

                    </div>
                    <div class="form-group mb-3">
                        <div class="row">
                            <div class="col-1">
                                <span class="fa fa-lock"></span>
                            </div>
                            <div class="col-11">
                                <input name="password" type="password" class="form-control" placeholder="Password" minlength="4" required>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="">
                                <label for="remember">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <div class="form-group">
                        <label class="text-info">NOTE : Role Account = <span class="text-danger">MAHASISWA</span> </label>
                    </div>
                    <div class="social-auth-links text-center mb-3">
                        <div class="">
                            <g:actionSubmit action="mhsSave" value="Save" class="btn btn-primary btn-block"/>
                        </div><br/>
                        <p>- OR -</p>
                        <g:link controller="login" action="auth" class="btn btn-success btn-block">Login</g:link>

                    </div>
                </g:form>
            <!-- /.col -->
            </div>
            <!-- /.login-card-body -->
        </div>

        </div>
    %{--    DOSEN--}%
        <div class="tab-pane fade " id="nav-dosen" role="tabpanel" aria-labelledby="nav-dosen-tab"><p class="text-center">Cannot be Using</p></div>
    %{--    USER--}%
        <div class="tab-pane fade" id="nav-user" role="tabpanel" aria-labelledby="nav-user-tab">

        <div class="card shadow p-3 mb-5 bg-white rounded">
            <div class="card-body rounded-lg login-card-body">
                <g:form name="formAdmin" controller="register" action="save" method="post">
                    <div class="form-group mb-3">
                        <div class="row">

                            <div class="col-1">
                                <span class="fa fa-user"></span>
                            </div>
                            <div class="col-11">
                                <input name="username" type="text" class="form-control" placeholder="Username" minlength="4" required>
                            </div>
                        </div>


                    </div>
                    <div class="form-group mb-3">
                        <div class="row">
                            <div class="col-1">
                                <span class="fa fa-lock"></span>
                            </div>
                            <div class="col-11">
                                <input name="password" type="password" class="form-control" placeholder="Password" minlength="4" required>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <div class="form-group">
                        <label class="text-info">NOTE : Role Account = <span class="text-danger">ADMIN</span> </label>
                    </div>
                    <div class="social-auth-links text-center mb-3">
                        <div class="">
                            <g:actionSubmit value="Save" class="btn btn-primary btn-block"/>
                        </div><br/>
                        <p>- OR -</p>
                        <g:link controller="login" action="auth" class="btn btn-success btn-block">Login</g:link>

                    </div>
                </g:form>
            <!-- /.col -->
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>
        </div>
    </div>


    <!-- /.login-box -->

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <asset:javascript src="adminlte.js"/>
    <asset:javascript src="customRegister.js"/>
    <!-- jQuery -->
    %{--<script src="../../plugins/jquery/jquery.min.js"></script>--}%
    %{--<asset:javascript src="jquery.min.js"/>--}%
    <!-- Bootstrap 4 -->
    %{--<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--}%
    %{--<asset:javascript src="bootstrap.bundle.min.js"/>--}%
    <!-- AdminLTE App -->
    %{--<script src="../../dist/js/adminlte.min.js"></script>--}%

    </body>
</html>