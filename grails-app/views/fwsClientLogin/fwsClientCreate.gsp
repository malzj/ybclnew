<%--
  Created by IntelliJ IDEA.
  User: malmemeda
  Date: 16-1-25
  Time: 下午3:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="fwsClientSave" >
    <fieldset class="form">
        <%@ page import="cbjlfws.FwsClient" %>



        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'address', 'error')} ">
            <label for="address">
                <g:message code="fwsClient.address.label" default="Address" />

            </label>
            <g:textField name="address" value="${fwsClientInstance?.address}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'birthday', 'error')} ">
            <label for="birthday">
                <g:message code="fwsClient.birthday.label" default="Birthday" />

            </label>
            <g:textField name="birthday" value="${fwsClientInstance?.birthday}"/>
        </div>



        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'company', 'error')} ">
            <label for="company">
                <g:message code="fwsClient.company.label" default="Company" />

            </label>
            <g:textField name="company" value="${fwsClientInstance?.company}"/>
        </div>


        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'name', 'error')} ">
            <label for="name">
                <g:message code="fwsClient.name.label" default="Name" />

            </label>
            <g:textField name="name" value="${fwsClientInstance?.name}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'password', 'error')} ">
            <label for="password">
                <g:message code="fwsClient.password.label" default="Password" />

            </label>
            <g:textField name="password" value="${fwsClientInstance?.password}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'phone', 'error')} ">
            <label for="phone">
                <g:message code="fwsClient.phone.label" default="Phone" />

            </label>
            <g:textField name="phone" value="${fwsClientInstance?.phone}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'qq', 'error')} ">
            <label for="qq">
                <g:message code="fwsClient.qq.label" default="Qq" />

            </label>
            <g:textField name="qq" value="${fwsClientInstance?.qq}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'sex', 'error')} ">
            <label for="sex">
                <g:message code="fwsClient.sex.label" default="Sex" />

            </label>
            <g:textField name="sex" value="${fwsClientInstance?.sex}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: fwsClientInstance, field: 'username', 'error')} ">
            <label for="username">
                <g:message code="fwsClient.username.label" default="Username" />

            </label>
            <g:textField name="username" value="${fwsClientInstance?.username}"/>
        </div>


    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </fieldset>
</g:form>
</body>
</html>