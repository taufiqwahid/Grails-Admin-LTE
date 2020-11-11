package taskadminlte

class JurusanController {

    def index() {
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def create(){

    }

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
        if (jurusan.validate()){
            jurusan.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Login Failed !"
            redirect action: 'create'
        }

    }

    def delete(){
        def jurusan = Jurusan.get(params.id)
        jurusan.delete flush: true, failOnError: true
        redirect action: 'index'
    }

    def detailJurusan(){
        def jurusan = Jurusan.get(params.id)
        def mahasiswa = Mahasiswa.findAllByJurusan(jurusan)
        println(jurusan)
        [
                mahasiswa: mahasiswa,
                jurusan: jurusan
        ]
    }

//        mencari data jurusan, filter jurusan yang sama pada data mahasiswa
//        select mahasiswa where jurusan='jurusan'

}
