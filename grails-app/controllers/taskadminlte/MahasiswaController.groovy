package taskadminlte

class MahasiswaController {

    def index() {
        def mahasiswa = Mahasiswa.list()
        [mahasiswa: mahasiswa]
    }

    def create(){}

    def save(){
        def mahasiswa = new Mahasiswa(params)
        mahasiswa.save(failOnError: true)
        redirect action: 'index'
    }
}