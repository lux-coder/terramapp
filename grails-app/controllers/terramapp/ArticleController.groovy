package terramapp

import grails.plugin.quickSearch.QuickSearchService
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class ArticleController {

    ArticleService articleService
    QuickSearchService quickSearchService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond articleService.list(params), model:[articleCount: articleService.count()]
    }

    def show(Long id) {
        respond articleService.get(id)
    }

    def create() {
        respond new Article(params)
    }

    def save(Article article) {
        if (article == null) {
            notFound()
            return
        }

        try {
            articleService.save(article)
        } catch (ValidationException e) {
            respond article.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'article.label', default: 'Article'), article.id])
                redirect article
            }
            '*' { respond article, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond articleService.get(id)
    }

    def update(Article article) {
        if (article == null) {
            notFound()
            return
        }

        try {
            articleService.save(article)
        } catch (ValidationException e) {
            respond article.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'article.label', default: 'Article'), article.id])
                redirect article
            }
            '*'{ respond article, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        articleService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'article.label', default: 'Article'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def search(){

        def searchParams = [sort: 'article', order:'asc', max:10, offset:0]
        def searchProperties = [name: "article.nameCRO"]
        def articleList = quickSearchService.search(domainClass: Article, searchParams: searchParams, searchProperties: searchProperties, query: properties.nameCRO)

        return [articleList:articleList]

    }

    def processUpload(){
        def file = request.getFile("articleFile")
        def articleDatas = []
        if(file && !file.empty){
            def newFile = File.createTempFile('grails', 'articleFile')
            file.transferTo(newFile)
            def importer = new ArticleExcelImporter(newFile)
            articleDatas = importer.list()
            articleDatas.each{ data->

                Article article = new Article()
                article.nameCRO = data.nameCRO
                article.nameENG = data.nameENG
                article.nameLAT = data.nameLAT
                articleService.save(article)
            }
            respond articleService.list(params), model:[articleCount: articleService.count()]
        }
        return [articleCount: articleService.count()]
    }



}
