package terramapp.auth

import grails.plugin.springsecurity.annotation.Secured

@Secured(value = ["hasRole('ROLE_ADMIN')"])
class RoleController extends grails.plugin.springsecurity.ui.RoleController {
}
