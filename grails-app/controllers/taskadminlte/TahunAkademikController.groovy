package taskadminlte

class TahunAkademikController {

    def index() {
        def tahun = TahunAkademik.list()
        [tahunAkademik: tahun]
    }
    def create(){
    }

    def save(){
        def tahun = new TahunAkademik(params)
        tahun.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def edit(){
        def tahun = TahunAkademik.get(params.id)
        [tahun:tahun]
    }

    def delete(){
        def tahun = TahunAkademik.get(params.id)
        tahun.delete flush: true, failOnError: true
        redirect action: 'index'
    }
    def update(){
        def tahun = TahunAkademik.get(params.id)
        tahun.properties =params
        tahun.save flush:true, failOnError:true
        redirect action: 'index'
    }
}
