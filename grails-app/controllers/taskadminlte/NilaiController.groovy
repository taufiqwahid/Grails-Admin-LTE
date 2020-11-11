package taskadminlte

class NilaiController {
    def index(){
        def nilai = Nilai.list()
        [nilai: nilai]
    }

    def create(){
        def matkul = Matakuliah.list()
        def mahasiswa = Mahasiswa.list()
        [matkul: matkul,mahasiswa:mahasiswa]
    }

    def edit(){
        def nilai = Nilai.get(params.id)
        def matkul = Matakuliah.list()
        def mahasiswa = Mahasiswa.list()
        [nilai: nilai, matkul: matkul,mahasiswa: mahasiswa]
    }

    def update(){
        def nilai = Nilai.get(params.id)
        nilai.properties = params
        nilai.save flush:true, failOnError:true
        redirect action: 'index'
    }

    def save(){
        def nilai = new Nilai(params)
        nilai.save flush:true, failOnError:true
        redirect action:'index'
    }
    def delete(){
        def nilai = Nilai.get(params.id)
        nilai.delete flush: true, failOnError: true
        redirect action: 'index'
    }
}
