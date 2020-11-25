package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Jurusan

//import taskadminlte.Jurusan
import taskadminlte.Mahasiswa
//import taskadminlte.MhsAkun

@Secured(['ROLE_MAHASISWA'])
class MhsAkunController {
    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService.principal.username
        def mhsAkun = Mahasiswa.findByNama(username)
        [mhsAkun: mhsAkun]
    }
//    def save(){
//        def mhsAkun = new MhsAkun(params)
//
//        if (mhsAkun.validate()){
//            mhsAkun.save flush:true, failOnError:true
//            redirect action: 'index', controller: 'mhsAkun', params: [lang: params.lang]
//        }else {
//            flash.message =  "Pastikan inputan formnya terisi semua !"
////            redirect action: 'update', controller: 'mhsAkun', params: [lang: params.lang]
//            render(view: 'update', controller:'mhsAkun', params:[lang: params.lang], model: [mhsAkun: mhsAkun])
//        }
//    }
//
    def updateAkun(){
        def mhsAkun = Mahasiswa.get(params.id)
        mhsAkun.properties = params
        if (mhsAkun.validate()){
            mhsAkun.save()
            redirect action: 'index', controller:'mhsAkun', params:[lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            render(view: 'update', controller:'mhsAkun', params:[lang: params.lang], model: [mhsAkun: mhsAkun])
        }

    }
//
    def update(){
        def username = springSecurityService.principal.username
        def mhsAkun = Mahasiswa.findByNama(username)
        def jurusan = Jurusan.list()
        [mhsAkun: mhsAkun, jurusan:jurusan]
    }
}
