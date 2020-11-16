package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class DosenController {

    def index() {
        def dosen = Dosen.list()
        [dosen: dosen]
    }
    @Secured(['ROLE_ADMIN'])
    def create(){
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }
    @Secured(['ROLE_ADMIN'])
    def edit(){
        def dosen = Dosen.get(params.id)
        def jurusan = Jurusan.list()
        [dosen: dosen,jurusan: jurusan]
    }

    def update(){
        def dosen = Dosen.get(params.id)
        dosen.properties = params
        if (dosen.validate()){
            dosen.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index'
        }
    }

    def save(){
        def dosen = new Dosen(params)
        if (dosen.validate()){
            dosen.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
    def delete(){
        def dosen = Dosen.get(params.id)
        dosen.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
