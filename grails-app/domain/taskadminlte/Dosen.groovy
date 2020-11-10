package taskadminlte

class Dosen {
    String nama
    String nip
    String alamat
    Jurusan jurusan

    static constraints = {
        nip nullable: false
        nama nullable: false
        alamat nullable: false
    }
}
