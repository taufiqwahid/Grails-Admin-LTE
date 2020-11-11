package taskadminlte

class JurusanController {

    def index() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def create(){}

    def edit(){
        def jurusan = Jurusan.get(params.id)
        [jurusan: jurusan]
    }

    def update(){
        def jurusan = Jurusan.get(params.id)
        jurusan.properties = params
        jurusan.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def jurusan = new Jurusan(params)

        jurusan.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def delete(){
        def jurusan = Jurusan.get(params.id)
        jurusan.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
