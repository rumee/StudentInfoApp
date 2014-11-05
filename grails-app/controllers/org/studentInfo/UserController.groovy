package org.studentInfo

class UserController {

    def index(){}

    def check() {
        //def userCheck = User.findByUsernameAndPassword(params.username, params.password)

        if ("admin" == params.username && "123" == params.password){
        //if(userCheck){
            flash.success = "login succeed"
            session.userType = "admin"
            session.name = params.username
            redirect( controller: "student" ,action: "list")
        }else{
            flash.error = "Login failed, Try again!"
            //redirect( controller: "user")
            render (view:"index")
        }
    }


    def logout(){
        session.invalidate()
        render(view: "index", model: [i : 1])
    }

    def register(){
        def u = new User(params)

        if (! u.save()) {
            return [user:u]
        } else {
            session.userType = "admin"
            redirect(controller:'student',action: "list")
        }

    }

}