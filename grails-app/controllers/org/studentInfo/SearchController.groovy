package org.studentInfo

class SearchController {

    def index() {

        def stringList = ["create", "delete", "update"];

        [results: stringList]

    }

    def search() {

        println params.selectedType
        println params.selectedItem

        def selectedType = params.selectedType
        def selectedItem = "%" + params.selectedItem + "%"
        def results = Student.withCriteria {
            ilike(selectedType, selectedItem)
        }

    }

    def result() {
        def selectedType = params.selectedType
        def selectedItem = "%" + params.selectedItem + "%"

        if (selectedType == "department") {
            def departments = Department.withCriteria {
                ilike("name", selectedItem)
            }
            if(!departments){
                flash.error = "Not found departments data!!"
            }else{
                [departments: departments]
            }
        } else {
            def students = Student.withCriteria {
                ilike(selectedType, selectedItem)
            }
            if(!students){
                flash.error = "Not found students data"
            }else {
                [students: students]
            }
        }
    }
}
