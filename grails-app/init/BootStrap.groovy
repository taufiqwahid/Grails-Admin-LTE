import taskadminlte.*

class BootStrap {

    def init = { servletContext ->
//        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
//        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
//        def admin = User.findOrSaveWhere(username: 'admin',password: 'admin')
//        def user = User.findOrSaveWhere(username: 'user',password: 'user')
//
//        if (!admin.authorities.contains(adminRole)){
//            UserRole.create(admin,adminRole,true)
//        }
//        if (!user.authorities.contains(userRole)){
//            UserRole.create(user,userRole,true)
//        }
    }
    def destroy = {
    }
}
