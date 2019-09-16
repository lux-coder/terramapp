package terramapp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class OrderTypeServiceSpec extends Specification {

    OrderTypeService orderTypeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new OrderType(...).save(flush: true, failOnError: true)
        //new OrderType(...).save(flush: true, failOnError: true)
        //OrderType orderType = new OrderType(...).save(flush: true, failOnError: true)
        //new OrderType(...).save(flush: true, failOnError: true)
        //new OrderType(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //orderType.id
    }

    void "test get"() {
        setupData()

        expect:
        orderTypeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<OrderType> orderTypeList = orderTypeService.list(max: 2, offset: 2)

        then:
        orderTypeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        orderTypeService.count() == 5
    }

    void "test delete"() {
        Long orderTypeId = setupData()

        expect:
        orderTypeService.count() == 5

        when:
        orderTypeService.delete(orderTypeId)
        sessionFactory.currentSession.flush()

        then:
        orderTypeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        OrderType orderType = new OrderType()
        orderTypeService.save(orderType)

        then:
        orderType.id != null
    }
}
