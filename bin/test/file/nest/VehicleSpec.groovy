package file.nest

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class VehicleSpec extends Specification implements DomainUnitTest<Vehicle> {

     void "test domain constraints"() {
        when:
        Vehicle domain = new Vehicle()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
