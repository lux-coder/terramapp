package terramapp

class OrderStatus {

    String isActive

    static constraints = {
        isActive nullable: false, blank: false
    }

    static mapping = {
        version false
        table name:"OrderStatus"
        isActive column: "isActive", sqlType: "nvarchar(20)", defaultValue:false
    }
}
