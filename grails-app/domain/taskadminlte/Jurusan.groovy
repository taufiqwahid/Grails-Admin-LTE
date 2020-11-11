package taskadminlte

class Jurusan {
    String nama = 'TIDAK ADA JURUUSAN'
    String fakultas

    static constraints = {
        nama nullable: false
        fakultas nullable: false
    }
}
