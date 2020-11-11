package taskadminlte

class KrsController {

    def index() {
        def krs = Krs.list()
        [krs: krs]
    }
    def create(){
        def mahasiswa = Mahasiswa.list()
        def matkul = Matakuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def penasehatAkademik = PenasehatAkademik.list()
        [
                mahasiswa: mahasiswa,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                penasehatAkademik: penasehatAkademik
        ]
    }
    def save(){
        def pa = new Krs(params)
        pa.save flush:true , failOnError:true
        redirect action:'index'
    }
    def edit(){
        def krs = Krs.get(params.id)
        def mahasiswa = Mahasiswa.list()
        def matkul = Matakuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def penasehatAkademik = PenasehatAkademik.list()
        [       krs: krs,
                mahasiswa: mahasiswa,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                penasehatAkademik: penasehatAkademik
        ]
    }
    def update(){
        def krs = Krs.get(params.id)
        krs.properties = params
        krs.save flush:true, failOnError:true
        redirect action: 'index'
    }
    def delete(){
        def krs = Krs.get(params.id)
        krs.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
