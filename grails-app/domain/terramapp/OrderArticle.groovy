package terramapp

class OrderArticle {

    Order order
    Article article
    ArticleType articleType
    String qty
    String note
    Boolean sample

    static hasMany = [articles:Article, orders:Order, articleTypes:ArticleType]

    static constraints = {

        order nullable: false
        article nullable: false
        articleType nullable: false
        qty nullable: false, blank: false
        note nullable: true, blank: true
        sample nullable: false
    }

    static mapping = {

        version false
        table name:"OrderArticle"
        qty column: "qty", sqlType: "nvarchar(5)"
        note column: "note", sqlType: "nvarchar(200)"
        sample column: "sample", sqlType: "bit", defaultValue:"false"
    }
}
