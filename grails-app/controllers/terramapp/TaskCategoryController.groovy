package terramapp

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasRole('ROLE_ADMIN')"])
class TaskCategoryController {

    TaskCategoryService taskCategoryService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond taskCategoryService.list(params), model:[taskCategoryCount: taskCategoryService.count()]
    }

    def show(Long id) {
        respond taskCategoryService.get(id)
    }

    def create() {
        respond new TaskCategory(params)
    }

    def save(TaskCategory taskCategory) {
        if (taskCategory == null) {
            notFound()
            return
        }

        try {
            taskCategoryService.save(taskCategory)
        } catch (ValidationException e) {
            respond taskCategory.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'taskCategory.label', default: 'TaskCategory'), taskCategory.id])
                redirect taskCategory
            }
            '*' { respond taskCategory, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond taskCategoryService.get(id)
    }

    def update(TaskCategory taskCategory) {
        if (taskCategory == null) {
            notFound()
            return
        }

        try {
            taskCategoryService.save(taskCategory)
        } catch (ValidationException e) {
            respond taskCategory.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'taskCategory.label', default: 'TaskCategory'), taskCategory.id])
                redirect taskCategory
            }
            '*'{ respond taskCategory, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        taskCategoryService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'taskCategory.label', default: 'TaskCategory'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taskCategory.label', default: 'TaskCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
