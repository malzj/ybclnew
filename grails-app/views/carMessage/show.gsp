
<%@ page import="cbjlfws.CarMessage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carMessage.label', default: 'CarMessage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carMessage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carMessage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carMessage">
			
				<g:if test="${carMessageInstance?.carName}">
				<li class="fieldcontain">
					<span id="carName-label" class="property-label"><g:message code="carMessage.carName.label" default="Car Name" /></span>
					
						<span class="property-value" aria-labelledby="carName-label"><g:fieldValue bean="${carMessageInstance}" field="carName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.carNumber}">
				<li class="fieldcontain">
					<span id="carNumber-label" class="property-label"><g:message code="carMessage.carNumber.label" default="Car Number" /></span>
					
						<span class="property-value" aria-labelledby="carNumber-label"><g:fieldValue bean="${carMessageInstance}" field="carNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.carShelfNumber}">
				<li class="fieldcontain">
					<span id="carShelfNumber-label" class="property-label"><g:message code="carMessage.carShelfNumber.label" default="Car Shelf Number" /></span>
					
						<span class="property-value" aria-labelledby="carShelfNumber-label"><g:fieldValue bean="${carMessageInstance}" field="carShelfNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.carType}">
				<li class="fieldcontain">
					<span id="carType-label" class="property-label"><g:message code="carMessage.carType.label" default="Car Type" /></span>
					
						<span class="property-value" aria-labelledby="carType-label"><g:fieldValue bean="${carMessageInstance}" field="carType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.carUserName}">
				<li class="fieldcontain">
					<span id="carUserName-label" class="property-label"><g:message code="carMessage.carUserName.label" default="Car User Name" /></span>
					
						<span class="property-value" aria-labelledby="carUserName-label"><g:fieldValue bean="${carMessageInstance}" field="carUserName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.engineNumber}">
				<li class="fieldcontain">
					<span id="engineNumber-label" class="property-label"><g:message code="carMessage.engineNumber.label" default="Engine Number" /></span>
					
						<span class="property-value" aria-labelledby="engineNumber-label"><g:fieldValue bean="${carMessageInstance}" field="engineNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.equipmentId}">
				<li class="fieldcontain">
					<span id="equipmentId-label" class="property-label"><g:message code="carMessage.equipmentId.label" default="Equipment Id" /></span>
					
						<span class="property-value" aria-labelledby="equipmentId-label"><g:fieldValue bean="${carMessageInstance}" field="equipmentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.fwsClient}">
				<li class="fieldcontain">
					<span id="fwsClient-label" class="property-label"><g:message code="carMessage.fwsClient.label" default="Fws Client" /></span>
					
						<span class="property-value" aria-labelledby="fwsClient-label"><g:link controller="fwsClient" action="show" id="${carMessageInstance?.fwsClient?.id}">${carMessageInstance?.fwsClient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.fwsShop}">
				<li class="fieldcontain">
					<span id="fwsShop-label" class="property-label"><g:message code="carMessage.fwsShop.label" default="Fws Shop" /></span>
					
						<span class="property-value" aria-labelledby="fwsShop-label"><g:link controller="fwsShop" action="show" id="${carMessageInstance?.fwsShop?.id}">${carMessageInstance?.fwsShop?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${carMessageInstance?.money}">
				<li class="fieldcontain">
					<span id="money-label" class="property-label"><g:message code="carMessage.money.label" default="Money" /></span>
					
						<span class="property-value" aria-labelledby="money-label"><g:fieldValue bean="${carMessageInstance}" field="money"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${carMessageInstance?.id}" />
					<g:link class="edit" action="edit" id="${carMessageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
