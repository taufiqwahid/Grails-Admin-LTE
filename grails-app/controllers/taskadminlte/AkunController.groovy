package taskadminlte

class AkunController {

    def index() {
        def akun = Akun.list()
        [akun: akun]
    }

    def create(){}

    def save(){
        def akun = new Akun(params)
        akun.save(failOnError: true)
        redirect action: 'index'
    }
}
