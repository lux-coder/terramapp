package terramapp

import grails.gorm.services.Service

@Service(OrderArticle)
interface OrderArticleService {

    OrderArticle get(Serializable id)

    List<OrderArticle> list(Map args)

    Long count()

    void delete(Serializable id)

    OrderArticle save(OrderArticle orderArticle)

}