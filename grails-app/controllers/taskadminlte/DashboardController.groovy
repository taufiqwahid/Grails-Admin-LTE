package taskadminlte

class DashboardController {

    def index() {
        println(Akun.getAll())
    }
}
