package taskadminlte

class Ruangan {
    String kode
    String nama
    String lantai
    static constraints = {
        kode nullable: false
        nama nullable: false
        lantai nullable: false
    }
}
