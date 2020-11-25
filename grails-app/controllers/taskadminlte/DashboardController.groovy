package taskadminlte

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_MAHASISWA'])

class DashboardController {

    SpringSecurityService springSecurityService

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

        def username = springSecurityService.principal.username
        def mahasiswa = taskadminlte.Mahasiswa.findByNama(username)


        def mhsJadwal = taskadminlte.Jadwal.findAllByMahasiswa(mahasiswa).size()
        def mhsKrs = taskadminlte.Krs.findAllByMahasiswa(mahasiswa).size()
        def mhsKhs = taskadminlte.Nilai.findAllByMahasiswa(mahasiswa).size()

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

                mhsJadwal : mhsJadwal,
                mhsKrs : mhsKrs,
                mhsKhs : mhsKhs,

        ]
    }
}
