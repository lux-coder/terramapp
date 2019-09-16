package terramapp

import grails.gorm.services.Service

@Service(OrderType)
interface OrderTypeService {

    OrderType get(Serializable id)

    List<OrderType> list(Map args)

    Long count()

    void delete(Serializable id)

    OrderType save(OrderType orderType)

}