package terramapp

import grails.gorm.services.Service

@Service(ArticleType)
interface ArticleTypeService {

    ArticleType get(Serializable id)

    List<ArticleType> list(Map args)

    Long count()

    void delete(Serializable id)

    ArticleType save(ArticleType articleType)

}