<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 24/11/20
  Time: 13.53
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

%{----}%

<div class="container-fluid">
    <div class="row d-flex justify-content-center">
        <div class="col-6 align-self-center">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
                <div class="card-body box-profile">
                    <div class="text-center">
                        <i class="fa fa-user-astronaut fa-4x"></i>
                    </div>
                    <h3 class="profile-username text-center">${mhsAkun.nama}</h3>
                    <p class="text-muted text-center">${mhsAkun.jurusan.nama}</p>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">About Me</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <strong><i class="fas fa-book mr-1"></i> <g:message code="form.label.alamat"/> </strong>
                    <p class="text-muted">
                        ${mhsAkun.alamat}
                    </p>
                    <hr>
                    <strong><i class="fas fa-map-marker-alt mr-1"></i> <g:message code="form.label.tglLahir"/> </strong>
                    <p class="text-muted">${mhsAkun.tglLahir}</p>
                    <hr>
                    <strong><i class="fas fa-map-marker-alt mr-1"></i> <g:message code="form.label.notelp"/> </strong>
                    <p class="text-muted">${mhsAkun.noTelp}</p>
                    <hr>
                <a class="btn btn-primary btn-block text-light" onclick="return confirm(${message(code: 'alert.message.edit')})" href="${createLink(params: [lang:params.lang], action: 'update', controller:'mhsAkun')}" ><i class="far fa-edit"></i></a>

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
    </div>
</div>


%{----}%

<g:render template="/layouts/Footer"/>