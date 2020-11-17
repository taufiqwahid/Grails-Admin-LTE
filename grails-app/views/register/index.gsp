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
        <br/><div class="text-center text-red" role="status">${flash.message}</div>
    </g:if>
    <div class="card">
        <div class="card-body login-card-body">
            <g:form controller="register" action="save" method="post">
                <div class="input-group mb-3">
                    <input name="username" type="text" class="form-control" placeholder="Username" required>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input name="password" type="password" class="form-control" placeholder="Password" required>
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
                        <g:actionSubmit action="save" value="Create" class="btn btn-primary btn-block"/>
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