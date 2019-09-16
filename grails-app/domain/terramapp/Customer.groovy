package terramapp

class Customer {

    String name
    String oib
    String state
    String city
    String address
    String zipCode
    String mail
    String phone
    String web

    static hasMany = [orders:Order]

    static constraints = {

        name nullable: false, blank: false
        oib nullable: false, blank: false, size: 11..11
        state nullable: false, blank: false, size: 3..20
        city nullable: false, blank: false, size: 3..20
        address nullable: false, blank: false, size: 3..50
        zipCode nullable: false, blank: false, size: 4..6
        mail nullable: true, blank: true, maxSize: 50
        phone nullable: true, maxSize: 20
        web nullable: true, maxSize: 50
    }

    static mapping = {

        version false
        table name: "Customer"
        name column: "name", sqlType: "nvarchar(20)"
        oib column: "oib", sqlType: "nvarchar(11)"
        state column: "state", sqlType: "nvarchar(20)"
        city column: "city", sqlType: "nvarchar(20)"
        address column: "address", sqlType: "nvarchar(20)"
        zipCode column: "zipCode", sqlType: "nvarchar(20)"
        mail column: "mail", sqlType: "nvarchar(20)"
        phone column: "phone", sqlType: "nvarchar(20)"
        web column: "web", sqlType: "nvarchar(20)"

    }
}
