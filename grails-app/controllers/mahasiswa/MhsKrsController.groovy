package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.MhsAkun

@Secured(['ROLE_MAHASISWA'])
class MhsKrsController {
    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService.principal.username
        def mhsAkun = MhsAkun.findByUsername(username)
        println(mhsAkun)
        [mhsAkun:mhsAkun]
   }
}
