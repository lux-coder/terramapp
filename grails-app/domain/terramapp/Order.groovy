package terramapp

class Order {

    Customer customer
    OrderType orderType
    OrderStatus orderStatus
    Date orderDate

    static belongsTo = [OrderArticle, Customer]

    static constraints = {

        customer nullable: false
        orderType nullable: false
        orderDate nullable: false
        orderStatus nullable: false
    }

    static mapping = {

        version false
        table name:"Orders"
    }
}
