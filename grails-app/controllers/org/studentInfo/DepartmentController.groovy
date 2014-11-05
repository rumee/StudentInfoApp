package org.studentInfo

class DepartmentController {

    def beforeInterceptor = [action:this.&auth]

    def auth() {
        if( !(session?.userType == "admin") ){
            redirect(action:"index")
            return false
        }
    }

    def create(){}

    def save() {
        try{
            // :::: Save ::::
            //println params.name
            //println params.id
            def aDepartment = new Department(params)

            if (aDepartment.validate() && params.id == ''){
                aDepartment.save(flush: true)
                flash.success = "Department Add Successfully"
                redirect(action: "list")
            }

            // :::: Update ::::
            else if (params.id != ''){
                def aDepartmentEdit = Department.get(params.id)
                aDepartmentEdit.properties = aDepartment
                if (aDepartmentEdit.validate()){
                    aDepartmentEdit.save(flush: true)
                    flash.success = "Department Update Successfully"
                    redirect(action: "list")
                }
                else{
                    def id = params.id
                    flash.error = "Not validate , Update again!"
                    redirect(action: "edit", id: id)
                }
            }
            else{
                flash.error = "Department Not add"
                render(view: "create")
            }

        }
        catch (Exception ex){
            flash.error = ex.getMessage()
            render (view : "list")
        }
    }

    def edit(){
        def id = params.id
        def department = Department.get(id)
        render (view: "create", model: [department : department])
    }

    def delete(){
        def id = params.id
        def department = Department.get(id)
        department.delete(flush: true)
        flash.success = "Department Delete :"+" "+ department.name
        redirect(action: "list")
    }

    def list(){
        def results = Department.list()
        [results : results]
    }
}
