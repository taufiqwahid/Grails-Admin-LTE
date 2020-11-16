package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

class NilaiController {
    def index(){
        def nilai = Nilai.list()
        [nilai: nilai]
    }

    def create(){
        def matkul = Matakuliah.list()
        def mahasiswa = Mahasiswa.list()
        [matkul: matkul,mahasiswa:mahasiswa]
    }
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def nilai = Nilai.get(params.id)
        def matkul = Matakuliah.list()
        def mahasiswa = Mahasiswa.list()
        [nilai: nilai, matkul: matkul, mahasiswa: mahasiswa]
    }

    def update(){
        def nilai = Nilai.get(params.id)
        nilai.properties = params
        if (nilai.validate()){
            nilai.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index'
        }
    }

    def save(){
        def nilai = new Nilai(params)
        if (nilai.validate()){
            nilai.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
    def delete(){
        def nilai = Nilai.get(params.id)
        nilai.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
