package taskadminlte

class Matakuliah {
    String nama
    Integer sks
    String semester
    static constraints = {
        nama nullable: false
        sks nullable: false
        semester nullable: false
    }
}
