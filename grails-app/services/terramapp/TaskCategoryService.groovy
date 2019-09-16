package terramapp

import grails.gorm.services.Service

@Service(TaskCategory)
interface TaskCategoryService {

    TaskCategory get(Serializable id)

    List<TaskCategory> list(Map args)

    Long count()

    void delete(Serializable id)

    TaskCategory save(TaskCategory taskCategory)

}