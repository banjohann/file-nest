package file.nest

import geb.spock.GebSpec
import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration

@Integration
@Rollback
class StudentIntegrationSpec extends GebSpec {

    def studentService
    def sessionFactory

    private static Long setupData() {
        new Student(firstName: 'John',lastName: 'Doe')
                .save(flush: true, failOnError: true)
        new Student(firstName: 'Max',lastName: 'Foo')
                .save(flush: true, failOnError: true)
        Student student = new Student(firstName: 'Alex',lastName: 'Bar')
                .save(flush: true, failOnError: true)
        student.id
    }

    void "test list"() {
        setupData()

        when:
        List<Student> studentList = studentService.list()

        then:
        studentList.size() == 3
        studentList[0].lastName == 'Doe'
        studentList[1].lastName == 'Foo'
        studentList[2].lastName == 'Bar'
    }

    void "test delete"() {
        Long id = setupData()

        expect:
        studentService.list().size() == 3

        when:
        studentService.delete(id)
        sessionFactory.currentSession.flush()

        then:
        studentService.list().size() == 2
    }
}
