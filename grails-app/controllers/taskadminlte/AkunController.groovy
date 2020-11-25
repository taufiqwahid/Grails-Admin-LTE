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
            def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
            user.save flush:true, failOnError:true
            if (!user.authorities.contains(userRole)){
                UserRole.create(user,userRole,true)
            }
            redirect action: 'index', controller:'akun', params:[lang:params.lang]
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
            redirect action: 'index', controller:'akun', params:[lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            render view: 'index', controller:'akun', params:[lang:params.lang]
        }
    }

    def delete(){
        def user = User.get(params.id)
        user.delete flush: true, failOnError: true
        render view: 'index', controller:'akun', params:[lang:params.lang]
    }

}
