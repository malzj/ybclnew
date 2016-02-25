<%--
  Created by IntelliJ IDEA.
  User: malmemeda
  Date: 16-1-25
  Time: 下午3:49
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table>
    <thead>
    <tr>

        <g:sortableColumn property="address" title="${message(code: 'fwsClient.address.label', default: 'Address')}" />

        <g:sortableColumn property="birthday" title="${message(code: 'fwsClient.birthday.label', default: 'Birthday')}" />

        <th><g:message code="fwsClient.carMessage.label" default="Car Message" /></th>

        <g:sortableColumn property="company" title="${message(code: 'fwsClient.company.label', default: 'Company')}" />

        <th><g:message code="fwsClient.fwsShop.label" default="Fws Shop" /></th>

        <g:sortableColumn property="name" title="${message(code: 'fwsClient.name.label', default: 'Name')}" />

    </tr>
    </thead>
    <g:link action="fwsClientCreate">新建客户</g:link>
    <tbody>
    <g:each in="${fwsClientList}" status="i" var="fwsClientInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${fwsClientInstance.id}">${fieldValue(bean: fwsClientInstance, field: "address")}</g:link></td>

            <td>${fieldValue(bean: fwsClientInstance, field: "birthday")}</td>

            <td>${fieldValue(bean: fwsClientInstance, field: "carMessage")}</td>

            <td>${fieldValue(bean: fwsClientInstance, field: "company")}</td>

            <td>${fieldValue(bean: fwsClientInstance, field: "fwsShop")}</td>

            <td>${fieldValue(bean: fwsClientInstance, field: "name")}</td>

        </tr>
    </g:each>
    </tbody>
</table>
<div class="pagination">
    <g:paginate total="${fwsClientInstanceTotal}" />
</div>

</body>
</html>