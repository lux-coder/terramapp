package terramapp

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class OrderArticleController {

    OrderArticleService orderArticleService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def forIndex(){
        List<OrderArticle> orderArticleList = orderArticleService.list(params) as List<OrderArticle>
        return [orderArticleList:orderArticleList]
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond orderArticleService.list(params), model:[orderArticleCount: orderArticleService.count()]
    }

    def show(Long id) {
        respond orderArticleService.get(id)
    }

    def create() {
        respond new OrderArticle(params)
    }

    def save(OrderArticle orderArticle) {
        if (orderArticle == null) {
            notFound()
            return
        }

        try {
            orderArticleService.save(orderArticle)
        } catch (ValidationException e) {
            respond orderArticle.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderArticle.label', default: 'OrderArticle'), orderArticle.id])
                redirect orderArticle
            }
            '*' { respond orderArticle, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond orderArticleService.get(id)
    }

    def update(OrderArticle orderArticle) {
        if (orderArticle == null) {
            notFound()
            return
        }

        try {
            orderArticleService.save(orderArticle)
        } catch (ValidationException e) {
            respond orderArticle.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'orderArticle.label', default: 'OrderArticle'), orderArticle.id])
                redirect orderArticle
            }
            '*'{ respond orderArticle, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        orderArticleService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'orderArticle.label', default: 'OrderArticle'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderArticle.label', default: 'OrderArticle'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
