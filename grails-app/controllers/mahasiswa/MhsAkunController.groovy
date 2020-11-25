package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Jurusan
import taskadminlte.MhsAkun

@Secured(['ROLE_MAHASISWA'])
class MhsAkunController {
    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService.principal.username
        def mhsAkun = MhsAkun.findByUsername(username)
        println(mhsAkun)
        [mhsAkun:mhsAkun]
    }
    def save(){
        def mhsAkun = new MhsAkun(params)

        if (mhsAkun.validate()){
            mhsAkun.save flush:true, failOnError:true
            redirect action: 'index', controller: 'mhsAkun', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
//            redirect action: 'update', controller: 'mhsAkun', params: [lang: params.lang]
            render(view: 'update', controller:'mhsAkun', params:[lang: params.lang], model: [mhsAkun: mhsAkun])
        }
    }

    def updateAkun(){
        def mhsAkun = MhsAkun.get(params.id)
        mhsAkun.properties = params
        if (mhsAkun.validate()){
            mhsAkun.save()
            redirect action: 'index', controller:'mhsAkun', params:[lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            render(view: 'update', controller:'mhsAkun', params:[lang: params.lang], model: [mhsAkun: mhsAkun])
        }

    }

    def update(){
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
        def username = springSecurityService.principal.username
        def mhsAkun = MhsAkun.findByUsername(username)
        [mhsAkun:mhsAkun, jurusan: jurusan]
    }
}
