package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class DashboardController {
    def index() {

        println(params)

        def Akun = Akun.list().size()
        def Dosen = Dosen.list().size()
        def Jadwal = Jadwal.list().size()
        def Jurusan = Jurusan.list().size()
        def Krs = Krs.list().size()
        def Mahasiswa = Mahasiswa.list().size()
        def Matakuliah = Matakuliah.list().size()
        def Nilai = Nilai.list().size()
        def PenasehatAkademik = PenasehatAkademik.list().size()
        def Ruangan = Ruangan.list().size()
        def TahunAkademik = TahunAkademik.list().size()
        [
                Akun : Akun,
                Dosen : Dosen,
                Jadwal : Jadwal,
                Jurusan : Jurusan,
                Krs : Krs,
                Mahasiswa : Mahasiswa,
                Matakuliah : Matakuliah,
                Nilai : Nilai,
                PenasehatAkademik : PenasehatAkademik,
                Ruangan : Ruangan,
                TahunAkademik : TahunAkademik,
        ]
    }
}
