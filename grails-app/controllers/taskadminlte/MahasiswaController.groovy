package taskadminlte

class MahasiswaController {

    def index() {
        def mahasiswa = Mahasiswa.list()
        [mahasiswa: mahasiswa]
    }

    def create(){
        def jurusan = Jurusan.list()
        [jurusan: jurusan]
    }

    def edit(){
        def mahasiswa = Mahasiswa.get(params.id)
        def jurusan = Jurusan.list()
        [mahasiswa: mahasiswa, jurusan: jurusan]
    }

    def update(){
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.properties = params
        mahasiswa.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def mahasiswa = new Mahasiswa(params)
        if (mahasiswa.validate()){
            mahasiswa.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
    def delete(){
        def mahasiswa = Mahasiswa.get(params.id)
        mahasiswa.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}