
<%@ page import="cbjlfws.CarMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carMessage.label', default: 'CarMessage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-carMessage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-carMessage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="carName" title="${message(code: 'carMessage.carName.label', default: 'Car Name')}" />
					
						<g:sortableColumn property="carNumber" title="${message(code: 'carMessage.carNumber.label', default: 'Car Number')}" />
					
						<g:sortableColumn property="carShelfNumber" title="${message(code: 'carMessage.carShelfNumber.label', default: 'Car Shelf Number')}" />
					
						<g:sortableColumn property="carType" title="${message(code: 'carMessage.carType.label', default: 'Car Type')}" />
					
						<g:sortableColumn property="carUserName" title="${message(code: 'carMessage.carUserName.label', default: 'Car User Name')}" />
					
						<g:sortableColumn property="engineNumber" title="${message(code: 'carMessage.engineNumber.label', default: 'Engine Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${carMessageInstanceList}" status="i" var="carMessageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${carMessageInstance.id}">${fieldValue(bean: carMessageInstance, field: "carName")}</g:link></td>
					
						<td>${fieldValue(bean: carMessageInstance, field: "carNumber")}</td>
					
						<td>${fieldValue(bean: carMessageInstance, field: "carShelfNumber")}</td>
					
						<td>${fieldValue(bean: carMessageInstance, field: "carType")}</td>
					
						<td>${fieldValue(bean: carMessageInstance, field: "carUserName")}</td>
					
						<td>${fieldValue(bean: carMessageInstance, field: "engineNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${carMessageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
