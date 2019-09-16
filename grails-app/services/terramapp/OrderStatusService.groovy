package terramapp

import grails.gorm.services.Service

@Service(OrderStatus)
interface OrderStatusService {

    OrderStatus get(Serializable id)

    List<OrderStatus> list(Map args)

    Long count()

    void delete(Serializable id)

    OrderStatus save(OrderStatus orderStatus)

}