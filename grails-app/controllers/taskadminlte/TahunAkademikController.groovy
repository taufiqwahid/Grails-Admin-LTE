package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_MAHASISWA'])

class TahunAkademikController {

    def index() {
        def tahun = TahunAkademik.list()
        [tahunAkademik: tahun]
    }
    def create(){
    }

    def save(){
        def tahun = new TahunAkademik(params)
        if (tahun.validate()){
            tahun.save flush:true, failOnError:true
            redirect action: 'index', controller: 'tahunAkademik', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create', controller: 'tahunAkademik', params: [lang: params.lang]
        }
    }
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def tahun = TahunAkademik.get(params.id)
        [tahun:tahun]
    }

    def delete(){
        def tahun = TahunAkademik.get(params.id)
        tahun.delete flush: true, failOnError: true
        redirect action: 'index', controller: 'tahunAkademik', params: [lang: params.lang]
    }
    def update(){
        def tahun = TahunAkademik.get(params.id)
        tahun.properties = params
        if (tahun.validate()){
            tahun.save flush:true, failOnError:true
            redirect action: 'index', controller: 'tahunAkademik', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'tahunAkademik', params: [lang: params.lang]
        }
    }
}
