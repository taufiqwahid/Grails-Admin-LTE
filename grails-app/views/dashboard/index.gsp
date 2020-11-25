<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 14.58
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>
%{--CONTENTNYA--}%

<div class="container">
%{--    111111111--}%
    <!-- Small boxes (Stat box) -->

    <sec:ifAllGranted roles="ROLE_MAHASISWA">
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner text-navy">
                        <h5><g:message code="dashboard.card.akun"/></h5>
                        <h4 class="text-white"><sec:username/></h4>
                    </div>
                    <div class="icon">
                        <i class="fa fa-user-astronaut"></i>
                    </div>
                    <a href="${createLink(params: [lang: params.lang],controller: 'mhsAkun')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    %{--                <g:link controller="dosen" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></g:link>--}%
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.krs"/></h5>
                        <h3>${mhsKrs}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-list-ul"></i>
                    </div>
                    <a href="${createLink(params: [lang: params.lang],controller: 'mhsKrs')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner text-navy">
                        <h5><g:message code="dashboard.card.khs"/></h5>

                        <h3>${mhsKhs}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-list-alt"></i>
                    </div>
                    <a href="${createLink(params: [lang: params.lang],controller: 'mhsKhs')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.jadwal"/></h5>
                        <h3>${mhsJadwal}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-list-ol"></i>
                    </div>
                    <a href="${createLink(params: [lang: params.lang],controller: 'jadwal')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->
    </sec:ifAllGranted>
    <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_USER">
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner text-navy">
                        <h5><g:message code="dashboard.card.dosen"/></h5>
                        <h3>${Dosen}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-user-graduate"></i>
                    </div>
                    <a href="${createLink(params: [lang: params.lang],controller: 'dosen')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
    %{--                <g:link controller="dosen" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></g:link>--}%
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.mahasiswa"/></h5>
                        <h3>${Mahasiswa}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-users"></i>
                    </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'mahasiswa')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
            </div>
            <!-- ./col -->
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
                <div class="inner text-navy">
                    <h5><g:message code="dashboard.card.matakuliah"/></h5>

                    <h3>${Matakuliah}</h3>
                </div>
                <div class="icon">
                    <i class="fa fa-laptop-house"></i>
                </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'mataKuliah')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.ruangan"/></h5>

                        <h3>${Ruangan}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-laptop-house"></i>
                    </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'ruangan')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->


    %{--    222222222--}%

        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.jurusan"/></h5>

                        <h3>${Jurusan}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-university"></i>
                    </div>
                <a href="${createLink(params: [lang: params.lang],controller: 'jurusan')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-secondary">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.krs"/></h5>

                        <h3>${Krs}</h3>
                    </div>
                    <div class="icon">
                        <i class="fas fa-book-open"></i>
                    </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'krs')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.nilai"/></h5>

                        <h3>${Nilai}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-poll"></i>
                    </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'nilai')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.jadwal"/></h5>

                        <h3>${Jadwal}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-calendar-alt"></i>
                    </div>
            <a href="${createLink(params: [lang: params.lang],controller: 'jadwal')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->

    %{--    333333333--}%

        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner text-navy">
                        <h5><g:message code="dashboard.card.penasehatAkademik"/></h5>

                        <h3>${PenasehatAkademik}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-user-shield"></i>
                    </div>
                <a href="${createLink(params: [lang: params.lang],controller: 'penasehatAkademik')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.tahunAkademik"/></h5>
                        <h3>${TahunAkademik}</h3>
                    </div>
                    <div class="icon">
                        <i class="fas fa-calendar-week"></i>
                    </div>
                <a href="${createLink(params: [lang: params.lang],controller: 'tahunAkademik')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner text-navy">
                        <h5><g:message code="dashboard.card.akun"/></h5>

                        <h3>${Akun}</h3>
                    </div>
                    <div class="icon">
                        <i class="fa fa-user"></i>
                    </div>
                <a href="${createLink(params: [lang: params.lang],controller: 'akun')}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </sec:ifAllGranted>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h5><g:message code="dashboard.card.logout"/></h5>
                    </div>
                    <div class="icon">
                        <i class="fas fa-sign-out-alt"></i>
                    </div>
            <g:link controller="login" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></g:link>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <!-- /.row -->
    </sec:ifAnyGranted>
</div>

%{--PENUTUP CONTENTNYA--}%

<g:render template="/layouts/Footer"/>