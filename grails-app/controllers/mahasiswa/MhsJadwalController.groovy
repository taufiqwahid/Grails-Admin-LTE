package mahasiswa

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_MAHASISWA'])

class MhsJadwalController {

    def index() { }
}
