package taskadminlte

class Mahasiswa {
    String nama
    String jurusan
    Integer stambuk
    static constraints = {
        nama nullable: false
        jurusan nullable: false
        stambuk nullable: false
    }
}
