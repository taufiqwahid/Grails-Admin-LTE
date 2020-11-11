package taskadminlte

class PenasehatAkademikController {

    def index() {
        def penasehatAkademik = PenasehatAkademik.list()
        [penasehatAkademik: penasehatAkademik]
    }
    def create(){
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def tahunAkademik = TahunAkademik.list()
        [
                mahasiswa: mahasiswa,
                dosen: dosen,
                tahunAkademik: tahunAkademik
        ]
    }
    def save(){
        def pa = new PenasehatAkademik(params)
        pa.save flush:true , failOnError:true
        redirect action:'index'
    }
    def edit(){
        def penasehatAkademik = PenasehatAkademik.get(params.id)
        def mahasiswa = Mahasiswa.list()
        def dosen = Dosen.list()
        def tahunAkademik = TahunAkademik.list()
        [       penasehatAkademik: penasehatAkademik,
                mahasiswa: mahasiswa,
                dosen: dosen,
                tahunAkademik: tahunAkademik
        ]
    }

    def update(){
        def penasehatAkademik = PenasehatAkademik.get(params.id)
        penasehatAkademik.properties = params
        penasehatAkademik.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def delete(){
        def penasehatAkademik = PenasehatAkademik.get(params.id)
        penasehatAkademik.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
