package taskadminlte

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "/"(controller: 'dashboard', action: 'index'){
            lang = "en"
        }
        "/login/auth" (controller: 'login', action: 'auth'){
            lang ='en'
        }
        "500"(view:'/error')
        "404"(view:'/notFound')

//        "/$lang?/$controller?/$action?"(){}

//        "/$lang?/$controller?/$action?/$id"(){
//            lang = "en"
//        }

//        "/$lang?/$controller?/$action"(controller: controller)

//
        "/$lang?/dashboard/$action?"(controller: "dashboard")
        "/$lang?/dosen/$action?"(controller: "dosen")
        "/$lang?/jadwal/$action?"(controller: "jadwal")
        "/$lang?/jurusan/$action?"(controller: "jurusan")
        "/$lang?/krs/$action?"(controller: "krs")
        "/$lang?/mahasiswa/$action?"(controller: "mahasiswa")
        "/$lang?/matakuliah/$action?"(controller: "mataKuliah")
        "/$lang?/nilai/$action?"(controller: "nilai")
        "/$lang?/penasehatakademik/$action?"(controller: "penasehatAkademik")
        "/$lang?/tahunakademik/$action?"(controller: "tahunAkademik")
        "/$lang?/ruangan/$action?"(controller: "ruangan")
        "/$lang?/akun/$action?"(controller: "akun")

//
        "/$lang?/mahasiswa/$action?/$id?"(controller: "mahasiswa")
        "/$lang?/dosen/$action?/$id?"(controller: "dosen")
        "/$lang?/jadwal/$action?/$id?"(controller: "jadwal")
        "/$lang?/jurusan/$action?/$id?"(controller: "jurusan")
        "/$lang?/krs/$action?/$id?"(controller: "krs")
        "/$lang?/mataKuliah/$action?/$id?"(controller: "mataKuliah")
        "/$lang?/nilai/$action?/$id?"(controller: "nilai")
        "/$lang?/penasehatAkademik/$action?/$id?"(controller: "penasehatAkademik")
        "/$lang?/tahunakademik/$action?/$id?"(controller: "tahunAkademik")
        "/$lang?/ruangan/$action?/$id?"(controller: "ruangan")
        "/$lang?/akun/$action?/$id?"(controller: "akun")






//        "/$lang/dosen"{
//        }

//        name langENG :'/en/controller?'
//
//        name langIDN : '/?lang=in'{
//            controller = 'dashboard'
//            action = 'index'
//        }

//        '/de' (controller: 'dashboard', action: 'index'){
//            lang = "de"
//        }
//        '/in' (controller: 'dashboard', action: 'index'){
//            lang = 'in'
//        }

    }
}
