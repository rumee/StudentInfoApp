package org.studentInfo

class Department {

    String name



    static hasMany = [students: Student]

    static mapping = {
        //version false
        //students cascade: 'all-delete-orphan'
        // merge, save-update, delete, lock, refresh, evict, replicate or all-delete-orphan
    }

    static constraints = {
        name blank: false, nullable: false, size:3..15
    }


}
