package terramapp

import terramapp.auth.Role
import terramapp.auth.User
import terramapp.auth.UserRole

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def adminUser = new User(username: 'admin', password: 'admin').save()

        UserRole.create(adminUser, adminRole, true)

    }
    def destroy = {
    }
}
