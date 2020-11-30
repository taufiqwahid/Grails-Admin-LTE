package mahasiswa

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import taskadminlte.Mahasiswa
import taskadminlte.Matakuliah
import taskadminlte.MhsKrs

@Secured(['ROLE_MAHASISWA'])
class MhsKrsController {
    SpringSecurityService springSecurityService

    def index() {
//        def username = springSecurityService.principal.username
//        def mahasiswa = Mahasiswa.findByNama(username)
//        def mhsKrs = MhsKrs.findAllByMahasiswa(mahasiswa)
        def mhsKrs = MhsKrs.list()
        [mhsKrs:mhsKrs]
   }
    def list() {
        def mhsKrs = MhsKrs.list()
        [mhsKrs:mhsKrs]
    }

    def create(){
        def matkul = Matakuliah.findAllBySemester(params.semester)
        def semester = params.semester
        [matkul:matkul,semester: semester]
   }

    def saveKrs(){
        def nama = springSecurityService.principal.username
        def valueParams = params.list('mataKuliah')
        def mhsKrs
        for (item in valueParams){
             mhsKrs = new MhsKrs(
                     mahasiswa: nama,
                     matakuliah: Matakuliah.findById(item),
                     semester: params.semester,
            )
            try {
                if (MhsKrs.findByMatakuliah(mhsKrs.matakuliah)){
                    flash.message = 'Already exist, please choose another !'
                    redirect action:'create', controller:'mhsKrs', params:[lang:params.lang, semester:params.semester]
                }else {
                    mhsKrs.save flush: true, failOnError:true
                    redirect action:'list', controller:'mhsKrs', params:[lang:params.lang]
                }
            }
            catch (Exception e){
                def matkul = Matakuliah.findAllBySemester(params.semester)
                def semester = params.semester
                render controller: 'mhsKrs', view: 'create', params: [lang: params.lang], model: [matkul:matkul,semester: semester]
            }
        }

    }

    def edit(){
        def mhsKrs = MhsKrs.list()
        [matkul: mhsKrs]
    }

    def delete(){
        def krsMhs = MhsKrs.get(params.id)
        krsMhs.delete()
        redirect controller: 'mhsKrs', action: 'edit', params: [lang: params.lang]
    }

}




