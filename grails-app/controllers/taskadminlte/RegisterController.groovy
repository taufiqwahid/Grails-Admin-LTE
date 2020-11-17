package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {

    def index() {
    }

    def save(){
        def user = new User(params)
        if (user.validate()){

        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
            user.save flush:true, failOnError:true
        if (!user.authorities.contains(userRole)){
            UserRole.create(user,userRole,true)
        }
            redirect action: 'index'

        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
}
