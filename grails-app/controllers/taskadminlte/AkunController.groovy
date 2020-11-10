package taskadminlte

class AkunController {

    def index() {
        def akun = Akun.list()
        [akun: akun]
    }

    def create(){}

    def save(){
        def akun = new Akun(params)
        akun.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def edit(){
        def akun = Akun.get(params.id)
        [akun: akun]
    }

    def update(){
        def akun = Akun.get(params.id)
        akun.properties = params
        akun.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def delete(){
        def akun = Akun.get(params.id)
        akun.delete flush: true, failOnError: true
        redirect action: 'index'
    }

}
