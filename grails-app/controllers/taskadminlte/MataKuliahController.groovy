package taskadminlte

class MataKuliahController {

    def index() {
        def matkul = Matakuliah.list()
        [matkul: matkul]
    }

    def create(){}

    def save(){
        def matkul = new Matakuliah(params)
        matkul.save(failOnError: true)
        redirect action: 'index'
    }
}
