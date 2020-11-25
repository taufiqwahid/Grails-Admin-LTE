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

<div class="container-fluid d-flex justify-content-center">
    <div class="row">
        <div class="col">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
                <div class="card-body box-profile">
                    <div class="text-center">
                        <img class="profile-user-img img-fluid img-circle"
                             src="../../dist/img/user4-128x128.jpg"
                             alt="User profile picture">
                    </div>
                    <h3 class="profile-username text-center">${mhsAkun.username}</h3>

                    <p class="text-muted text-center">Jurusan</p>

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
                        B.S. in Computer Science from the University of Tennessee at Knoxville
                    </p>

                    <hr>

                    <strong><i class="fas fa-map-marker-alt mr-1"></i> <g:message code="form.label.tglLahir"/> </strong>

                    <p class="text-muted">Malibu, California</p>

                    <hr>

                    <strong><i class="fas fa-map-marker-alt mr-1"></i> <g:message code="form.label.notelp"/> </strong>

                    <p class="text-muted">Malibu, California</p>

                    <hr>
                <a class="btn btn-primary btn-block text-light" onclick="return confirm('Yakin Ingin Mengedit Data ini')" href="${createLink(params: [lang:params.lang], action: 'update', controller:'mhsAkun')}" ><i class="far fa-edit"></i></a>

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