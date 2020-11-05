package taskadminlte

class Matakuliah {
    String id_matkul
    String nama
    Integer sks
    static constraints = {
        id_matkul nullable: false
        nama nullable: false
        sks nullable: false
    }
}
