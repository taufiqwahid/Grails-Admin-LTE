package taskadminlte

class Nilai {
    Matakuliah matakuliah
    Mahasiswa mahasiswa
    String uts
    String uas

    static constraints = {
        uts nullable: false
        uas nullable: false
    }
}
