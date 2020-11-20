package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

class MahasiswaController {

    def index() {
        def mahasiswa = Mahasiswa.list()
        [mahasiswa: mahasiswa]
    }

    def create(){
        def jurusan = Jurusan.list()

        [jurusan: jurusan]
    }
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def mahasiswa = Mahasiswa.get(params.id)
        def jurusan = Jurusan.list()
        [mahasiswa: mahasiswa, jurusan: jurusan]
    }

    def update(){
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.properties = params
        if (mahasiswa.validate()){
            mahasiswa.save flush:true, failOnError:true
            redirect action: 'index', controller: 'mahasiswa', params: [lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'mahasiswa', params: [lang: params.lang]
        }
    }

    def save(){
        def mahasiswa = new Mahasiswa(params)
        if (mahasiswa.validate()){
            mahasiswa.save flush:true, failOnError:true
            redirect action: 'index', controller:'mahasiswa', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create', controller: 'mahasiswa', params: [lang: params.lang]
        }
    }
    def delete(){
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.delete flush: true, failOnError: true
        redirect action: 'index', controller: 'mahasiswa', params: [lang: params.lang]
    }
}