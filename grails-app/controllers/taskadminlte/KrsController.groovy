package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_MAHASISWA'])

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
        def krs = new Krs(params)
        if (krs.validate()){
            krs.save flush:true, failOnError:true
            redirect action: 'index', controller: 'krs', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create', controller: 'krs', params: [lang: params.lang]
        }
    }
    @Secured(['ROLE_ADMIN'])

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
        if (krs.validate()){
            krs.save flush:true, failOnError:true
            redirect action: 'index', controller: 'krs', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller: 'krs', params: [lang: params.lang]
        }
    }
    def delete(){
        def krs = Krs.get(params.id)
            krs.delete flush: true, failOnError: true
            flash.message = "Failed to Delete"
            redirect action: 'index', controller: 'krs', params: [lang: params.lang]

    }
}
