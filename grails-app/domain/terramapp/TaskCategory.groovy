package terramapp

class TaskCategory {

    String type

    static constraints = {
        type nullable: false, blank: false
    }

    static mapping = {
        version false
        table name:"TaskCategory"
        type column: "type", sqlType: "nvarchar(20)"
    }
}
