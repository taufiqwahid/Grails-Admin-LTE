package taskadminlte

class DosenController {

    def index() {
        def dosen = Dosen.list()
        [dosen: dosen]
    }

    def create(){}

    def save(){
        def dosen = new Dosen(params)
        dosen.save(failOnError: true)
        redirect action: 'index'
    }
}
