package terramapp

class Article {

    String nameCRO
    String nameENG
    String nameLAT

    static constraints = {

        nameCRO nullable: false, blank: false
    }

    static mapping = {

        version false
        table name: "Article"
        nameCRO column: "nameCRO", sqlType: "nvarchar(30)"
        nameENG column: "nameENG", sqlType: "nvarchar(30)"
        nameLAT column: "nameLAT", sqlType: "nvarchar(30)"

    }

}
