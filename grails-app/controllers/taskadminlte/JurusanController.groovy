package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

class JurusanController {

    def index() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def create(){

    }
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def jurusan = Jurusan.get(params.id)
        [jurusan: jurusan]
    }

    def update(){
        def jurusan = Jurusan.get(params.id)
        jurusan.properties = params
        if (jurusan.validate()){
            jurusan.save flush:true, failOnError:true
            redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        }
    }

    def save(){
        def jurusan = new Jurusan(params)
        if (jurusan.validate()){
            jurusan.save flush:true, failOnError:true
            redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create', controller: 'jurusan', params: [lang: params.lang]
        }

    }

    def delete(){
        def jurusan = Jurusan.get(params.id)
        jurusan.delete flush: true, failOnError: true
        redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        try {
            jurusan.delete flush: true, failOnError: true
            redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        } catch(Exception e){
            flash.message = "Failed Delete ${e}"
            redirect action: 'index', controller: 'jurusan', params: [lang: params.lang]
        }
    }

    def detailJurusan(){
        def jurusan = Jurusan.get(params.id)
        def mahasiswa = Mahasiswa.findAllByJurusan(jurusan)
        println(jurusan)
        [
                mahasiswa: mahasiswa,
                jurusan: jurusan
        ]
    }

//        mencari data jurusan, filter jurusan yang sama pada data mahasiswa
//        select mahasiswa where jurusan='jurusan'

}
