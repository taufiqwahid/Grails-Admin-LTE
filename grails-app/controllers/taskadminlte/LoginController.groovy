package taskadminlte

class LoginController {

    def index() {
    }
    def cekLogin(){
//        def akun = Akun.list()
//        def email = akun.email.get(0)
//        if (email == params.email){
//            redirect controller:'dashboard', action:'index'
//        }
        def akun = Akun.findByEmailAndPassword(params.email, params.password)
        if (akun){
            flash.message =  "Login Success !"
            session["user"] = 'upi'
            redirect action:'index', controller:'dashboard'
        }else{
            flash.message =  "Login Failed !"
            redirect action: 'index', controller: 'login'
        }

//        if (params.email == akun.email){
//            println('BERHASIILLLLL')
//        }
//        redirect action:'index', controller:'mahasiswa'
    }

}
