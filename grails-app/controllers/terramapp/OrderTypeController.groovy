package terramapp

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class OrderTypeController {

    OrderTypeService orderTypeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond orderTypeService.list(params), model:[orderTypeCount: orderTypeService.count()]
    }

    def show(Long id) {
        respond orderTypeService.get(id)
    }

    def create() {
        respond new OrderType(params)
    }

    def save(OrderType orderType) {
        if (orderType == null) {
            notFound()
            return
        }

        try {
            orderTypeService.save(orderType)
        } catch (ValidationException e) {
            respond orderType.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderType.label', default: 'OrderType'), orderType.id])
                redirect orderType
            }
            '*' { respond orderType, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond orderTypeService.get(id)
    }

    def update(OrderType orderType) {
        if (orderType == null) {
            notFound()
            return
        }

        try {
            orderTypeService.save(orderType)
        } catch (ValidationException e) {
            respond orderType.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'orderType.label', default: 'OrderType'), orderType.id])
                redirect orderType
            }
            '*'{ respond orderType, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        orderTypeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'orderType.label', default: 'OrderType'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderType.label', default: 'OrderType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
