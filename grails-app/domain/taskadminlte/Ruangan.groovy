package taskadminlte

class Ruangan {
    String kode
    Jurusan jurusan
    Matakuliah matakuliah
    static constraints = {
        kode nullable: false
    }
}