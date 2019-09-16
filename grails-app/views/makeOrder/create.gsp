<%@ page import="org.joda.time.DateTimeZone; terramapp.OrderStatus; terramapp.Article; terramapp.ArticleType; terramapp.Order; terramapp.OrderType; terramapp.Customer; terramapp.OrderArticle;" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="drugiLayout"/>
    <title>Create order</title>
    %{--<asset:stylesheet src="bootstrap.min.js"/>--}%
    %{--<asset:javascript src="bootstrap.min.js application.js"/>--}%
    %{--<asset:stylesheet src="application.css"/>--}%
    %{--<asset:javascript src="application.js"/>--}%

    %{--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />--}%
    %{--<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>--}%
</head>

<body>

<g:form action="save">
<div class="container">
    <div class="row">
        <br/>
        <div class="col-md-3">
            <label for="orderDate">Order date: </label>
            <g:datePicker name="orderDate" value="${new java.util.Date()}" precision="day"/><br/>
        </div>
        <div class="col-md-3">
            <label for="orderType">Order type:</label>
            <g:select name="orderType" from="${OrderType.getAll().type}"/><br/>
        </div>
        <div class="col-md-3">
            <label for="orderStatus">Order status:</label>
            <g:select name="orderStatus" from="${OrderStatus.getAll().isActive}"/><br/>
        </div>
    </div>

    <div class="row">
        <br/>
        <div class="col-md-3">
            <label for="e1">Customer: </label>
            %{--<g:select from="${Customer.getAll().name}" name="customerName"/>--}%
            <select id="e1" style="width: 100%" ></select>
            <br/>
        </div>
        <div class="col-md-3">
            <label for="customerAddress">Address:</label>
            <g:textField name="customerAddress" id ="addressHolder"/><br/>
        </div>
        <div class="col-md-3">
            <label for="customerPhone">Phone:</label>
            <g:textField name="customerPhone"/><br/>
        </div>
    </div>
    <div id="cloneHere">
        <div class="row" id="forClone">
            <br/>
            <div class="col-md-2">
                <label for="articleName">Article:</label><br/>
                <g:select from="${Article.getAll().nameCRO}" name="articleName"/><br/>
            </div>
            <div class="col-md-2">
                <label for="articleType">Article type:</label><br/>
                <g:select from="${ArticleType.getAll().type}" name="articleType" /><br/>
            </div>
            <div class="col-md-1">
                <label for="quantity">Quantity: </label>
                <g:textField name="quantity" size="5px"/><br/>
            </div>
            <div class="col-md-1">
                <label for="sample">Sample: </label><br/>
                <g:checkBox name="sample"/><br/>
            </div>
            <div class="col-md-4">
                <label for="note">Note: </label><br/>
                <g:textArea name="note" /><br/>
            </div>
        </div>
    </div>
    <p style="font-weight: bold;">Dodaj novi artikl.</p>
    <g:actionSubmit value="Save" action="save"/>
</div>
</g:form>


%{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--}%
<script type="text/javascript">
    $(document).ready(function(){
        $("p").click(function(){
            $("#forClone").clone().appendTo($("#cloneHere"));
        });
    });

    var studentSelect = $('#e1');
    $('#e1').select2({
        placeholder: "Komitent...",
        minimumInputLength: 3,
        ajax: {
            url: '${createLink(controller: "customer", action: "search")}',
            delay:250,
            data:function (params) {
                return {
                    query: params
                };
            },
            processResults:function(data)
            {
                console.log("data",data[0]);
                var option = new Option(data[0], data[0], true, true);

                $("#addressHolder").val(data[1]);//adresa

                studentSelect.append(option).trigger('change');//ime
                return {
                    results:"da"
                }
            }
        }

    });



</script>



</body>
</html>
