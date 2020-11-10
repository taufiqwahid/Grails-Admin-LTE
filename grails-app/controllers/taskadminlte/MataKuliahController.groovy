package taskadminlte

class MataKuliahController {

    def index() {
        def matkul = Matakuliah.list()
        [matkul: matkul]
    }

    def create(){}

    def edit(){
        def matkul = Matakuliah.get(params.id)
        [matkul: matkul]
    }

    def update(){
        def matkul = Matakuliah.get(params.id)
        matkul.properties = params
        matkul.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def matkul = new Matakuliah(params)
        matkul.save flush:true, failOnError:true
        redirect action: 'index'
    }
    def delete(){
        def matkul = Matakuliah.get(params.id)
        matkul.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
