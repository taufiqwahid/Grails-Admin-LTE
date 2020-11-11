package taskadminlte

class JadwalController {

    def index() {
        def jadwal = Jadwal.list()
        [jadwal: jadwal]
    }
    def create(){
        def dosen = Dosen.list()
        def matkul = Matakuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan
        ]
    }
    def save(){
        def pa = new Jadwal(params)
        pa.save flush:true , failOnError:true
        redirect action:'index'
    }
    def edit(){
        def jadwal = Jadwal.get(params.id)
        def dosen = Dosen.list()
        def matkul = Matakuliah.list()
        def tahunAkademik = TahunAkademik.list()
        def ruangan = Ruangan.list()
        [       jadwal: jadwal,
                dosen: dosen,
                matkul: matkul,
                tahunAkademik: tahunAkademik,
                ruangan: ruangan
        ]
    }
    def update(){
        def jadwal = Jadwal.get(params.id)
        jadwal.properties = params
        jadwal.save flush:true, failOnError:true
        redirect action: 'index'
    }
    def delete(){
        def jadwal = Jadwal.get(params.id)
        jadwal.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
