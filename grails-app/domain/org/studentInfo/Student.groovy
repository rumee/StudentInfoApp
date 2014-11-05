package org.studentInfo

class Student {

    String name
    String regId
    String email
    String gender
    //Department departmentId
    //byte[] myFile

    static belongsTo = [department: Department]

    static constraints = {
        name blank: false, nullable: false
        regId blank: false,unique: true, nullable: false, size: 3..5
        email email: true, nullable: true
        gender blank: false, nullable: false

        // Image:
        // myFile maxSize: 1024 * 1024 * 2
    }

    static mapping = {
        //version false

    }


}
