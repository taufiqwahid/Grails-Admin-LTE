package taskadminlte

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])

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
        if (pa.validate()){
            pa.save flush:true, failOnError:true
            redirect action: 'index', controller: 'jadwal', params: [lang: params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua !"
            redirect action: 'create', controller: 'jadwal', params: [lang: params.lang]
        }
    }
    @Secured(['ROLE_ADMIN'])
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
        if (jadwal.validate()){
            jadwal.save flush:true, failOnError:true
            redirect action: 'index', controller:'jadwal', params:[lang:params.lang]
        }else {
            flash.message =  "Pastikan inputan formnya terisi semua sebelum mengedit !"
            redirect action: 'index', controller:'jadwal', params:[lang:params.lang]
        }
    }
    def delete(){
        def jadwal = Jadwal.get(params.id)
        jadwal.delete flush: true, failOnError: true
        redirect action: 'index', controller: 'jadwal', params: [lang: params.lang]
    }
}
