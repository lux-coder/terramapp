package terramapp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class OrderArticleServiceSpec extends Specification {

    OrderArticleService orderArticleService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new OrderArticle(...).save(flush: true, failOnError: true)
        //new OrderArticle(...).save(flush: true, failOnError: true)
        //OrderArticle orderArticle = new OrderArticle(...).save(flush: true, failOnError: true)
        //new OrderArticle(...).save(flush: true, failOnError: true)
        //new OrderArticle(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //orderArticle.id
    }

    void "test get"() {
        setupData()

        expect:
        orderArticleService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<OrderArticle> orderArticleList = orderArticleService.list(max: 2, offset: 2)

        then:
        orderArticleList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        orderArticleService.count() == 5
    }

    void "test delete"() {
        Long orderArticleId = setupData()

        expect:
        orderArticleService.count() == 5

        when:
        orderArticleService.delete(orderArticleId)
        sessionFactory.currentSession.flush()

        then:
        orderArticleService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        OrderArticle orderArticle = new OrderArticle()
        orderArticleService.save(orderArticle)

        then:
        orderArticle.id != null
    }
}
