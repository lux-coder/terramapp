 package terramapp

 import grails.plugin.springsecurity.annotation.Secured

 @Secured(value = ["hasAnyRole('ROLE_ADMIN', 'ROLE_USER')"])
class MainController {

    def index() { }
}
