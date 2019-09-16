package terramapp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ArticleTypeServiceSpec extends Specification {

    ArticleTypeService articleTypeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ArticleType(...).save(flush: true, failOnError: true)
        //new ArticleType(...).save(flush: true, failOnError: true)
        //ArticleType articleType = new ArticleType(...).save(flush: true, failOnError: true)
        //new ArticleType(...).save(flush: true, failOnError: true)
        //new ArticleType(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //articleType.id
    }

    void "test get"() {
        setupData()

        expect:
        articleTypeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ArticleType> articleTypeList = articleTypeService.list(max: 2, offset: 2)

        then:
        articleTypeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        articleTypeService.count() == 5
    }

    void "test delete"() {
        Long articleTypeId = setupData()

        expect:
        articleTypeService.count() == 5

        when:
        articleTypeService.delete(articleTypeId)
        sessionFactory.currentSession.flush()

        then:
        articleTypeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ArticleType articleType = new ArticleType()
        articleTypeService.save(articleType)

        then:
        articleType.id != null
    }
}
