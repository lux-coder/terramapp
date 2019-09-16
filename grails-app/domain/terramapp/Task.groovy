package terramapp

import terramapp.auth.User

class Task {

    String taskTitle
    String taskText
    Date taskDate
    User user
    TaskCategory taskCategory

    static constraints = {

        taskTitle nullable: false, blank: false
        taskText nullable: false, blank: false
        taskCategory nullable: false
        taskDate nullable: false
    }

    static mapping = {

        version false
        table name:"Tasks"
        taskTitle column: "taskTitle", sqlType: "nvarchar(50)"
        taskText column: "taskText", sqlType: "nvarchar(500)"
    }
}
