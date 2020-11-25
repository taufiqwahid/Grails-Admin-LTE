package taskadminlte

class Mahasiswa {
    String nama
    String nim
    String alamat
    String tglLahir
    String noTelp
    Jurusan jurusan
    static constraints = {
        nama nullable: false
         nim nullable: false
         alamat nullable: false
         tglLahir nullable: false
         noTelp nullable: false
    }
}