package taskadminlte

class MhsAkun {
    String nama
    String nim
    String alamat
    String tglLahir
    String noTelp
    Jurusan jurusan
    String username
    String password
    static constraints = {
        nama nullable: false
        nim nullable: false
        alamat nullable: false
        tglLahir nullable: false
        noTelp nullable: false
        jurusan nullable: false
        username nullable: false
        password nullable: false
    }
}
