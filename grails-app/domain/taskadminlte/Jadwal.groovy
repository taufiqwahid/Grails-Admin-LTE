package taskadminlte

class Jadwal {
    Dosen dosen
    Matakuliah matakuliah
    String hari
    String jam
    TahunAkademik tahunAkademik
    Ruangan ruangan
    static constraints = {
        hari nullable: false
        jam nullable: false
    }
}
