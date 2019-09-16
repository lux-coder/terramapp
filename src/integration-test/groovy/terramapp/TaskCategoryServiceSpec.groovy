package terramapp

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TaskCategoryServiceSpec extends Specification {

    TaskCategoryService taskCategoryService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TaskCategory(...).save(flush: true, failOnError: true)
        //new TaskCategory(...).save(flush: true, failOnError: true)
        //TaskCategory taskCategory = new TaskCategory(...).save(flush: true, failOnError: true)
        //new TaskCategory(...).save(flush: true, failOnError: true)
        //new TaskCategory(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //taskCategory.id
    }

    void "test get"() {
        setupData()

        expect:
        taskCategoryService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TaskCategory> taskCategoryList = taskCategoryService.list(max: 2, offset: 2)

        then:
        taskCategoryList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        taskCategoryService.count() == 5
    }

    void "test delete"() {
        Long taskCategoryId = setupData()

        expect:
        taskCategoryService.count() == 5

        when:
        taskCategoryService.delete(taskCategoryId)
        sessionFactory.currentSession.flush()

        then:
        taskCategoryService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TaskCategory taskCategory = new TaskCategory()
        taskCategoryService.save(taskCategory)

        then:
        taskCategory.id != null
    }
}
