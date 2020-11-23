package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan: ruangan]
    }

    def create(){
        def matkul = Matakuliah.list()
        def jurusan = Jurusan.list()
        [matkul: matkul,jurusan: jurusan]
    }
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def ruangan = Ruangan.get(params.id)
        def matkul = Matakuliah.list()
        def jurusan = Jurusan.list()
        [ruangan: ruangan, matkul: matkul,jurusan: jurusan]

    }

    def update(){
        def ruangan = Ruangan.get(params.id)
        ruangan.properties = params
        if (ruangan.validate()){
            ruangan.save flush:true, failOnError:true
            redirect action: 'index', controller: 'ruangan', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'ruangan', params: [lang: params.lang]
        }
    }

    def save(){
        def matkul = Matakuliah.list()
        def jurusan = Jurusan.list()
        def ruangan = new Ruangan(params)
        if (ruangan.validate()){
            ruangan.save flush:true, failOnError:true
            redirect action: 'index', controller: 'ruangan', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            render view: 'create', controller: 'ruangan', params: [lang: params.lang], model: [ruangan: ruangan, matkul: matkul, jurusan: jurusan]
        }
    }
    def delete(){
        def ruangan = Ruangan.get(params.id)
        ruangan.delete flush: true, failOnError: true
        redirect action: 'index', controller: 'ruangan', params: [lang: params.lang]
    }
}
