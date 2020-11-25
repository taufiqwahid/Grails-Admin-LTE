package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_MAHASISWA'])
class DosenController {

    def index() {
        def dosen = Dosen.list()
        [dosen: dosen]
    }

    def create(){
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

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
            redirect action: 'index', controller:'dosen', params:[lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller:'dosen', params:[lang:params.lang]
        }
    }

    def save(){
        def dosen = new Dosen(params)
        if (dosen.validate()){
            dosen.save flush:true, failOnError:true
            redirect action: 'index', controller:'dosen', params: [lang: params.lang]
        }else {
            def jurusan = Jurusan.list()
            flash.message =  "Pastikan inputan formnya terisi semua !"
            render( view: 'create', controller: 'dosen', params: [lang: params.lang], model:[dosen: dosen, jurusan: jurusan])
        }


    }
    def delete(){
        def dosen = Dosen.get(params.id)
        if (dosen.validate()){
            dosen.delete flush: true, failOnError: true
            redirect action: 'index', controller:'dosen', params:[lang:params.lang]
        }else{
            flash.message = "Failed Delete"
            redirect action: 'index', controller:'dosen', params:[lang:params.lang]
        }

    }
}
