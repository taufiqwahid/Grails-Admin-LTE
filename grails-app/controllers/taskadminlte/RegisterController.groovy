package taskadminlte

class RegisterController {

    def index() {
    }
    def save(){
        def register = new Akun(params)
        println(register)
        register.save(failOnError: true)
        redirect controller:'login', action: 'index'
    }
}
