package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AkunController {

    def index() {
        def user = UserRole.list()
        [user: user]
//        println(user.role)
    }

    def create(){}

    def save(){
        def user = new User(params)
        if (user.validate()){
            user.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            render view: 'create', controller:'akun', params:[lang:params.lang], model: [akun: user]
        }

    }

    def edit(){
        def akun = User.get(params.id)
        [akun: akun]
    }

    def update(){
        def akun = User.get(params.id)
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
        def user = User.get(params.id)
        def role = UserRole.get(params.id)
        user.delete flush: true, failOnError: true
        role.delete flush: true, failOnError: true
        redirect action: 'index'
    }

}
