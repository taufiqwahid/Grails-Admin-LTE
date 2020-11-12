package taskadminlte

class RegisterController {

    def index() {
    }
    def save(){
        def register = new Akun(params)
        println(register)
        if (register.validate()){
            register.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
}
