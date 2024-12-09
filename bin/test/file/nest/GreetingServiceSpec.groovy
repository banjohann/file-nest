package file.nest

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class GreetingServiceSpec extends Specification implements ServiceUnitTest<GreetingService> {

     void "test something"() {
        expect:
        service.doSomething()
     }
}
