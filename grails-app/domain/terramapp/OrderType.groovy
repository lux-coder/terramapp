package terramapp

class OrderType {

    String type

    //static belongsTo = [Order]

    static constraints = {

        type nullable: false, blank: false, unique: true
    }

    static mapping = {

        version false
        table name:"OrderType"
        type column: "type", sqlType: "nvarchar(20)"
    }
}
