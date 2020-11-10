package taskadminlte

class Matakuliah {
    String nama
    String sks
    String semester

    static constraints = {
        nama nullable: false
        sks nullable: false
        semester nullable: false

    }
}
