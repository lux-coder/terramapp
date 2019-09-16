package terramapp

class ArticleType {

    String type


    static belongsTo = [OrderArticle]

    static constraints = {

        type nullable: false, blank: false
    }

    static mapping = {

        version false
        table name:"ArticleType"
        type column: "type", sqlType: "nvarchar(20)"
    }
}
