<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 13.52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    %{--    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">--}%
    <asset:stylesheet src="all.min.css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    %{--    <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">--}%
    <asset:stylesheet src="icheck-bootstrap.min.css"/>
    <!-- Theme style -->
    %{--    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">--}%
    <asset:stylesheet src="adminlte.min.css"/>
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Sign Up</b></a>
    </div>
    <!-- /.login-logo -->
    <g:if test="${flash.message}">
        <br/><div class="text-center text-red" role="status">${flash.message}</div>
    </g:if>
    <div class="card">
        <div class="card-body login-card-body">
            <g:form controller="register" action="save" method="post">
                <div class="input-group mb-3">
                    <input name="nama" type="text" class="form-control" placeholder="Nama Lengkap">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input name="email" type="email" class="form-control" placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input name="password" type="password" class="form-control" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="social-auth-links text-center mb-3">
                    <div class="">
                        <button type="submit" class="btn btn-primary btn-block"></i>Register</button>
                    </div>
                </div>
            </g:form>
        <!-- /.col -->
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
%{--<script src="../../plugins/jquery/jquery.min.js"></script>--}%
<asset:javascript src="jquery.min.js"/>
<!-- Bootstrap 4 -->
%{--<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--}%
<asset:javascript src="bootstrap.bundle.min.js"/>
<!-- AdminLTE App -->
%{--<script src="../../dist/js/adminlte.min.js"></script>--}%
<asset:javascript src="adminlte.js"/>


</body>
</html>