package terramapp

import grails.gorm.transactions.Transactional

@Transactional
class MakeOrderService {

    def getEntityList(){
        return OrderArticle.list()
    }

    def getEntity(Serializable id){
        return Order.findById(id)
    }

    def serviceMethod() {

    }
}
