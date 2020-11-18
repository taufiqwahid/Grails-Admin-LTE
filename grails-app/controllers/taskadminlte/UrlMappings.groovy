package taskadminlte

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


        "/"(controller: 'dashboard')
//        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')

        name langENG :'/?lang=eng'{
            controller = 'dashboard'
            action = 'index'
        }

        name langIDN : '/?lang=in'{
            controller = 'dashboard'
            action = 'index'
        }

//        '/de' (controller: 'dashboard', action: 'index'){
//            lang = "de"
//        }
//        '/in' (controller: 'dashboard', action: 'index'){
//            lang = 'in'
//        }

    }
}
