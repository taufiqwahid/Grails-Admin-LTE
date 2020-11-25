package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {

    def index() {
    }

    def save(){
        def user = new User(params)
//        def mhsAkun = new MhsAkun(params)
        if (user.validate()){

//        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
        def userRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
            user.save flush:true, failOnError:true
//            mhsAkun.save flush:true, failOnError:true
        if (!user.authorities.contains(userRole)){
            UserRole.create(user,userRole,true)
        }
            redirect action: 'index'
            flash.message =  "Silahkan LOGIN !"
        }else {
            flash.message =  "Username telah digunakan !"
            redirect action: 'index'
        }
    }
}
