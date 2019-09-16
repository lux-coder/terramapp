<%@ page import="terramapp.OrderArticleService; terramapp.Article; terramapp.ArticleType; terramapp.Order; terramapp.OrderType; terramapp.Customer; terramapp.OrderArticle;" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Order table list</title>
    %{--<asset:stylesheet src="bootstrap.min.js"/>--}%
    %{--<asset:javascript src="bootstrap.min.js application.js"/>--}%
</head>

<body>
    <div class="table">
        <table>
            <thead>
                <tr>
                    <th>Order date</th>
                    <th>Order type</th>
                    <th>Order status</th>
                    <th>Customer</th>
                    <th>Article</th>
                    <th>Article type</th>
                    <th>Qty</th>
                    <th>Sample</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${OrderArticle.list()}" var="orderArticle">
                    <tr>
                        <td>${Order.get(orderArticle.orderId).orderDate}</td>
                        <td>${Order.get(orderArticle.orderId).orderType.type}</td>
                        <td>${Order.get(orderArticle.orderId).orderStatus.isActive}</td>
                        <td>${Order.get(orderArticle.orderId).customer.name}</td>
                        <td>${orderArticle.article.nameCRO}</td>
                        <td>${orderArticle.articleType.type}</td>
                        <td>${orderArticle.qty}</td>
                        <td>${orderArticle.sample}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>

</body>
</html>