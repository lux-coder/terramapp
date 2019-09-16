package terramapp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class OrderStatusServiceSpec extends Specification {

    OrderStatusService orderStatusService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new OrderStatus(...).save(flush: true, failOnError: true)
        //new OrderStatus(...).save(flush: true, failOnError: true)
        //OrderStatus orderStatus = new OrderStatus(...).save(flush: true, failOnError: true)
        //new OrderStatus(...).save(flush: true, failOnError: true)
        //new OrderStatus(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //orderStatus.id
    }

    void "test get"() {
        setupData()

        expect:
        orderStatusService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<OrderStatus> orderStatusList = orderStatusService.list(max: 2, offset: 2)

        then:
        orderStatusList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        orderStatusService.count() == 5
    }

    void "test delete"() {
        Long orderStatusId = setupData()

        expect:
        orderStatusService.count() == 5

        when:
        orderStatusService.delete(orderStatusId)
        sessionFactory.currentSession.flush()

        then:
        orderStatusService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        OrderStatus orderStatus = new OrderStatus()
        orderStatusService.save(orderStatus)

        then:
        orderStatus.id != null
    }
}
