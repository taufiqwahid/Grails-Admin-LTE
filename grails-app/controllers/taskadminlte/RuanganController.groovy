package taskadminlte

class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan: ruangan]
    }

    def create(){}

    def save(){
        def ruangan = new Ruangan(params)
        ruangan.save(failOnError: true)
        redirect action: 'index'
    }
}
