package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Krs
import taskadminlte.Mahasiswa

@Secured(['ROLE_MAHASISWA'])
class MhsKrsController {
    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService.principal.username
        def mahasiswa = Mahasiswa.findByNama(username)
        def mhsKrs = Krs.findAllByMahasiswa(mahasiswa)
        [mhsKrs:mhsKrs]
   }
}




