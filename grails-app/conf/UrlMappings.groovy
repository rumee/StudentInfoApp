class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "User", action: "index")
        //"/"(view:"/index")
        "500"(view:'/error')
	}
}
