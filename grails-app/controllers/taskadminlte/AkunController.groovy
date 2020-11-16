package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class AkunController {

    def index() {
        def akun = Akun.list()
        [akun: akun]
    }

    def create(){}

    def save(){
        def akun = new Akun(params)
        if (akun.validate()){
            akun.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }

    }

    @Secured(['ROLE_ADMIN'])
    def edit(){
        def akun = Akun.get(params.id)
        [akun: akun]
    }

    def update(){
        def akun = Akun.get(params.id)
        akun.properties = params
        if (akun.validate()){
            akun.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index'
        }
    }

    def delete(){
        def akun = Akun.get(params.id)
        akun.delete flush: true, failOnError: true
        redirect action: 'index'
    }

}
