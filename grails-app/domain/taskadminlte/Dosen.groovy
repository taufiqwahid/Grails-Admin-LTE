package taskadminlte

class Dosen {
    String nip
    String nama
    String matakuliah
    static constraints = {
        nip nullable: false
        nama nullable: false
        matakuliah nullable: false
    }
}
