package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

class MataKuliahController {

    def index() {
        def matkul = Matakuliah.list()
        [matkul: matkul]
    }

    def create(){}
    @Secured(['ROLE_ADMIN'])

    def edit(){
        def matkul = Matakuliah.get(params.id)
        [matkul: matkul]
    }

    def update(){
        def matkul = Matakuliah.get(params.id)
        matkul.properties = params
        if (matkul.validate()){
            matkul.save flush:true, failOnError:true
            redirect action: 'index', controller: 'mataKuliah', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'mataKuliah', params: [lang: params.lang]
        }
    }

    def save(){
        def matkul = new Matakuliah(params)
        if (matkul.validate()){
            matkul.save flush:true, failOnError:true
            redirect action: 'index', controller:'matkul', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            render( view: 'create', controller: 'matkul', params: [lang: params.lang], model:[matkul: matkul])
        }
    }

    def delete(){
        def matkul = Matakuliah.get(params.id)
        try{
            matkul.delete flush: true, failOnError: true
//            redirect action: 'index', controller: 'mataKuliah', params: [lang: params.lang]
        }catch(Exception e){
            flash.message = "failed delete ${e}"
            redirect action: 'index', controller: 'mataKuliah', params: [lang: params.lang]
        }
    }
}
