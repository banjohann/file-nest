package file.nest

class Student {

    String firstName
    String lastName
    String profilePicture

    static constraints = {
        profilePicture nullable: true, url: true
    }
}