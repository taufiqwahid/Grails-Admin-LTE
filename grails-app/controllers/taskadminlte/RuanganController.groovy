package taskadminlte

class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan: ruangan]
    }

    def create(){}

    def edit(){
        def ruangan = Ruangan.get(params.id)
        [ruangan: ruangan]
    }

    def update(){
        def ruangan = Ruangan.get(params.id)
        ruangan.properties = params
        ruangan.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def ruangan = new Ruangan(params)
        ruangan.save(failOnError: true)
        redirect action: 'index'
    }
    def delete(){
        def ruangan = Ruangan.get(params.id)
        ruangan.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
