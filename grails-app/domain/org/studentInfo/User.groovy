package org.studentInfo

class User {

    // time stamps: automatically populated by GORM
    Date dateCreated
    Date lastUpdated

    String username
    String password
    String userType

    static constraints = {
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/
    }

    static mapping = {

    }
}
