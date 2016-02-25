
<%@ page import="cbjlfws.FwsClient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fwsClient.label', default: 'FwsClient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fwsClient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fwsClient" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
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
				<tbody>
				<g:each in="${fwsClientInstanceList}" status="i" var="fwsClientInstance">
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
		</div>
	</body>
</html>
