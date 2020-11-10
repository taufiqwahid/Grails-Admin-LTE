package taskadminlte

class DashboardController {

    def index() {
        def pa = PenasehatAkademik.list()
        [pa:pa]
    }
}
