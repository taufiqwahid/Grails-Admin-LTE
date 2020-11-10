package taskadminlte

class NilaiController {
    def index(){
        def nilai = Nilai.list()
        [nilai: nilai]
    }

    def create(){
        def matkul = Matakuliah.list()
        [matkul: matkul]
    }

    def save(){
        def nilai = new Nilai(params)
        nilai.save flush:true, failOnError:true
        redirect action:'index'
    }
}
