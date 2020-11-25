package taskadminlte

class Jadwal {
    Mahasiswa mahasiswa
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
