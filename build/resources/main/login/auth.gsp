<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 11.43
--%>

<g:render template="/layouts/Header"/>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Login</b></a>
    </div>
    <g:if test="${flash.message}">
    %{--                <br/><div class="text-center text-red" role="status">${flash.message}</div>--}%
        <div class="container">
            <div class="alert bg-gradient-warning alert-dismissible fade show" role="alert">
                <strong>Warning</strong> ${flash.message}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    </g:if>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
                <g:form action="authenticate" method="post">
                <div class="input-group mb-3">
                    <input name="username" type="text" class="form-control" placeholder="Username">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input name="password" type="password" class="form-control" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-lock"></span>
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
            <div class="social-auth-links text-center mb-3">
                <div class="">
%{--                    <button type="submit" class="btn btn-primary btn-block"></i>Sign In</button>--}%
                    <g:actionSubmit value="Sign In" class="btn btn-primary btn-block"/>
                </div><br/>
                <p>- OR -</p>
                    <g:actionSubmit value="Sign Out" class="btn btn-light btn-block"/>
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