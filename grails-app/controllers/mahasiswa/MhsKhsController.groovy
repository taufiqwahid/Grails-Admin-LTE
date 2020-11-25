package mahasiswa

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_MAHASISWA'])

class MhsKhsController {

    def index() { }
}
