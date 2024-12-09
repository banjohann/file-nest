package file.nest

import grails.gorm.transactions.Transactional

class StudentService {

    def get(Long id) {
        Student.get(id)
    }

    def list() {
        Student.list()
    }

    @Transactional
    def save(student) {
        student.save(flush: true)
    }

    @Transactional
    def delete(Long id) {
        def student = Student.get(id)
        if (student) {
            student.delete(flush: true)
            return true
        }
        return false
    }
}