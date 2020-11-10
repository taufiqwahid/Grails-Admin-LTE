package taskadminlte

class Nilai {
    Matakuliah matakuliah
    String nim
    String uts
    String uas

    static constraints = {
        nim nullable: false
        uts nullable: false
        uas nullable: false
    }
}
