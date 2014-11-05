package org.studentInfo

class StudentController {

    def beforeInterceptor = [action:this.&auth, except:["index"]]

    def auth() {
        if( !(session?.userType == "admin") ){
            redirect(action:"index")
            return false
        }
    }

    def index() {}

    def create(){
        def departmentList = Department.list()
        [departmentList : departmentList]
    }

    def save() {
        try{
            // :::: Save ::::
            def aStudent = new Student(params)

            if (aStudent.validate() && params.id == ''){
                aStudent.save(flush: true)
                flash.success = "Student Add Successfully"
                redirect(action: "list")
            }


            // :::: Update ::::
            else if (params.id != ''){
                def aStudentEdit = Student.get(params.id)
                aStudentEdit.properties = aStudent
                if (aStudentEdit.validate()){
                    aStudentEdit.save(flush: true)
                    flash.success = "Student Update Successfully"
                    redirect(action: "list")
                }
                else{
                   def id = params.id
                   flash.error = "Not validate , Update again!"
                   redirect(action: "edit", id: id)
                }
            }
            else{
                flash.error = "Student Not add"
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
        def student = Student.get(id)
        def departmentList = Department.list()
        //[departmentList : departmentList]
        render (view: "create", model: [student : student,departmentList : departmentList])
    }

    def delete(){
        def id = params.id
        def student = Student.get(id)
        student.delete(flush: true)
        flash.success = "Student Delete :"+" "+ student.name +" "+"(RegId- "+ student.regId +")"
        redirect(action: "list")
    }

    def list(){
        def results = Student.list()
        [results : results]
    }




}
