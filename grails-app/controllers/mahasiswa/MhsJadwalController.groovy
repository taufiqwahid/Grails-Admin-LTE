package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Jadwal
import taskadminlte.Krs
import taskadminlte.Mahasiswa
import taskadminlte.Matakuliah

@Secured(['ROLE_MAHASISWA'])

class MhsJadwalController {
    SpringSecurityService springSecurityService
    def index() {
        def username = springSecurityService.principal.username
        def mahasiswa = Mahasiswa.findByNama(username)
        def jadwal = Jadwal.findAllByMahasiswa(mahasiswa)
        [jadwal:jadwal]
//        def username = springSecurityService.principal.username
//        def mahasiswa = Mahasiswa.findByNama(username)
//        def matakuliah = Matakuliah.list()
//        def matkul = Krs.findAllByMatakuliah(matakuliah)
//        def krs = Krs.findAllByMahasiswaAndMatakuliah(mahasiswa, matkul)
//        [krs:krs]
    }
}
