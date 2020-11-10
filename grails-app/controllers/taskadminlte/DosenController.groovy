package taskadminlte

class DosenController {

    def index() {
        def dosen = Dosen.list()
        [dosen: dosen]
        def dosenInput = new Dosen(nip: '111222', nama: 'Dosen2', matakuliah: 'kalkulus',)
        dosenInput.save(flush: true)
    }

    def create(){}

    def edit(){
        def dosen = Dosen.get(params.id)
        [dosen: dosen]
    }

    def update(){
        def dosen = Dosen.get(params.id)
        dosen.properties = params
        dosen.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def dosen = new Dosen(params)
//        dosen.addToChapters(new Chapter(title: 'Chapter 1'))
        dosen.save flush:true, failOnError:true
        redirect action: 'index'
    }
    def delete(){
        def dosen = Dosen.get(params.id)
        dosen.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
