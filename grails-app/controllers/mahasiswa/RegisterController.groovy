package mahasiswa

import taskadminlte.Mahasiswa
import taskadminlte.MhsAkun
import taskadminlte.Role
import taskadminlte.User
import taskadminlte.UserRole

class RegisterController {

    def index() {
    }

    def mhsRegister(){
    }

    def mhsSave(){
        def user = new User(params)
        if (user.validate()){
//        def userRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
            def userRole = Role.findOrSaveWhere(authority: 'ROLE_MAHASISWA')
            user.save flush: true, failOnError: true
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
