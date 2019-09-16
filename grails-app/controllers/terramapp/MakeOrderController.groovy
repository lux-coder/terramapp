package terramapp

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class MakeOrderController {

    OrderArticleService orderArticleService

    def index() { }

    def create(){ }

    def save() {

        try {
            def date = new Date()

            Order order = new Order()
            order.orderDate = params.orderDate
            order.orderType = OrderType.findByType(params.orderType)
            order.orderStatus = OrderStatus.findByIsActive(params.orderStatus)
            order.customer = Customer.findByName(params.customerName)

            if (params.articleName.size() > 1) {
                println(params.articleName.size())
                for (int i = 0; i < params.articleName.size(); i++) {

                    OrderArticle orderArticle = new OrderArticle()
                    orderArticle.article = Article.findByNameCRO(params.articleName[i])
                    orderArticle.articleType = ArticleType.findByType(params.articleType[i])
                    println(params)
                    //println(orderArticle.articleType)
                    orderArticle.qty = params.quantity[i]
                    orderArticle.sample = params.sample[i]
                    orderArticle.note = params.note[i]
                    orderArticle.order = order
                    //println(orderArticle.qty[i])
                    orderArticleService.save(orderArticle)
                }
                order.save()
            }
            else {
                OrderArticle orderArticle = new OrderArticle()
                orderArticle.article = Article.findByNameCRO(params.articleName)
                orderArticle.articleType = ArticleType.findByType(params.articleType)
                println("PRINTING PARAMS!!!")
                println(params)
                println(orderArticle.articleType)
                orderArticle.qty = params.quantity
                orderArticle.sample = params.sample
                orderArticle.note = params.note
                orderArticle.order = order
                println(orderArticle.qty)
                orderArticleService.save(orderArticle)
                order.save()
            }



            redirect(actionName:index())
        }
        catch(Exception e){
            println(e)
        }
    }
}
