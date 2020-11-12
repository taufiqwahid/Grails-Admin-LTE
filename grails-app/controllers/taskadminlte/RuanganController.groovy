package taskadminlte

class RuanganController {

    def index() {
        def ruangan = Ruangan.list()
        [ruangan: ruangan]
    }

    def create(){
        def matkul = Matakuliah.list()
        def jurusan = Jurusan.list()
        [matkul: matkul,jurusan: jurusan]
    }

    def edit(){
        def ruangan = Ruangan.get(params.id)
        def matkul = Matakuliah.list()
        def jurusan = Jurusan.list()
        [ruangan: ruangan, matkul: matkul,jurusan: jurusan]

    }

    def update(){
        def ruangan = Ruangan.get(params.id)
        ruangan.properties = params
        ruangan.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def ruangan = new Ruangan(params)
        if (ruangan.validate()){
            ruangan.save flush:true, failOnError:true
            redirect action: 'index'
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create'
        }
    }
    def delete(){
        def ruangan = Ruangan.get(params.id)
        ruangan.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
