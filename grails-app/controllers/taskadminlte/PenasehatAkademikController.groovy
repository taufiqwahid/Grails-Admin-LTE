package taskadminlte

class PenasehatAkademikController {

    def index() { }
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
}
