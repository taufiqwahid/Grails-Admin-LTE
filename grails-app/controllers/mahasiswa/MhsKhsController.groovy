package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Mahasiswa
import taskadminlte.Nilai

@Secured(['ROLE_MAHASISWA'])

class MhsKhsController {
    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService.principal.username
        def mahasiswa = Mahasiswa.findByNama(username)
        def nilai = Nilai.findAllByMahasiswa(mahasiswa)
        [nilai: nilai]
    }
}
