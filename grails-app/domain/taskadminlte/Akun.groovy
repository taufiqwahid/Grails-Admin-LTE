package taskadminlte

class Akun {
    String nama
    String email
    String password
    Date tanggal = new Date()

    static constraints = {
        nama nullable: false
        email email: false
        password nullable: false
    }
}
