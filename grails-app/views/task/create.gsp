<%@ page import="terramapp.auth.User; terramapp.Task" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-task" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.task}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.task}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.task}" method="POST">
                <fieldset class="form">
                    <f:all bean="task"/>
                    %{--<label for="taskTitle">Task title</label>--}%
                    %{--<g:textField name="taskTitle" value="${params.taskTitle}"/><br/>--}%
                    %{--<label for="taskText">Task text</label>--}%
                    %{--<g:textField name="taskText" value="${params.taskText}"/><br/>--}%
                    %{--<label for="taskCategory">Task catgory</label>--}%
                    %{--<g:select name="taskCategory" from="${terramapp.TaskCategory.getAll().type}"/><br/>--}%
                    %{--<label for="taskDate">Task date</label>--}%
                    %{--<g:datePicker name="taskDate" value="${new java.util.Date()}" precision="day"/><br/>--}%
                    %{--<label for="user">User</label>--}%
                    %{--<g:textField name="user" value="${sec.username()}"/>--}%


                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
