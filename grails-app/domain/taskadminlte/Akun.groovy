package taskadminlte

class Akun {
    String nama
    String email
    String password
    Date tanggal = new Date()

    static constraints = {
        nama nullable: false
        email email: true
        password nullable: false
        tanggal nullable: false
    }
}
