package file.nest

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class StudentServiceSpec extends Specification implements ServiceUnitTest<StudentService> {

     void "test something"() {
        expect:
        service.doSomething()
     }
}
