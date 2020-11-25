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
    <div class="card shadow p-3 mb-5 bg-white rounded">
        <div class="card-body login-card-body">
                <g:form name="formLogin" action="authenticate" method="post">
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
            <div class="social-auth-links text-center mb-3">
                <div class="">
%{--                    <button type="submit" class="btn btn-primary btn-block"></i>Sign In</button>--}%
                    <g:actionSubmit value="Sign In" class="btn btn-primary btn-block"/>
                </div><br/>
                <p>- OR -</p>
                <g:link controller="register" action="index" class="btn btn-light btn-block">Sign Up</g:link>

            </div>
                </g:form>
            <!-- /.col -->
        </div>
        <!-- /.login-card-body -->
    </div>
</div>

<!-- /.login-box -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<asset:javascript src="adminlte.js"/>
<asset:javascript src="customRegister.js"/>
</body>
</html>