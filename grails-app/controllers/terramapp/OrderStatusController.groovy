package terramapp

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasRole('ROLE_ADMIN')"])
class OrderStatusController {

    OrderStatusService orderStatusService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond orderStatusService.list(params), model:[orderStatusCount: orderStatusService.count()]
    }

    def show(Long id) {
        respond orderStatusService.get(id)
    }

    def create() {
        respond new OrderStatus(params)
    }

    def save(OrderStatus orderStatus) {
        if (orderStatus == null) {
            notFound()
            return
        }

        try {
            orderStatusService.save(orderStatus)
        } catch (ValidationException e) {
            respond orderStatus.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), orderStatus.id])
                redirect orderStatus
            }
            '*' { respond orderStatus, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond orderStatusService.get(id)
    }

    def update(OrderStatus orderStatus) {
        if (orderStatus == null) {
            notFound()
            return
        }

        try {
            orderStatusService.save(orderStatus)
        } catch (ValidationException e) {
            respond orderStatus.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), orderStatus.id])
                redirect orderStatus
            }
            '*'{ respond orderStatus, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        orderStatusService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
