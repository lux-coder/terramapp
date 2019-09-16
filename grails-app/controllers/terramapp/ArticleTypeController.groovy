package terramapp

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class ArticleTypeController {

    ArticleTypeService articleTypeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond articleTypeService.list(params), model:[articleTypeCount: articleTypeService.count()]
    }

    def show(Long id) {
        respond articleTypeService.get(id)
    }

    def create() {
        respond new ArticleType(params)
    }

    def save(ArticleType articleType) {
        if (articleType == null) {
            notFound()
            return
        }

        try {
            articleTypeService.save(articleType)
        } catch (ValidationException e) {
            respond articleType.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'articleType.label', default: 'ArticleType'), articleType.id])
                redirect articleType
            }
            '*' { respond articleType, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond articleTypeService.get(id)
    }

    def update(ArticleType articleType) {
        if (articleType == null) {
            notFound()
            return
        }

        try {
            articleTypeService.save(articleType)
        } catch (ValidationException e) {
            respond articleType.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'articleType.label', default: 'ArticleType'), articleType.id])
                redirect articleType
            }
            '*'{ respond articleType, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        articleTypeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'articleType.label', default: 'ArticleType'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'articleType.label', default: 'ArticleType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
