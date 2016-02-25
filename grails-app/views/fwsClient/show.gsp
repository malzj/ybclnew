
<%@ page import="cbjlfws.FwsClient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fwsClient.label', default: 'FwsClient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fwsClient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fwsClient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fwsClient">
			
				<g:if test="${fwsClientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="fwsClient.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${fwsClientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="fwsClient.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:fieldValue bean="${fwsClientInstance}" field="birthday"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.carMessage}">
				<li class="fieldcontain">
					<span id="carMessage-label" class="property-label"><g:message code="fwsClient.carMessage.label" default="Car Message" /></span>
					
						<span class="property-value" aria-labelledby="carMessage-label"><g:link controller="carMessage" action="show" id="${fwsClientInstance?.carMessage?.id}">${fwsClientInstance?.carMessage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="fwsClient.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${fwsClientInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.fwsShop}">
				<li class="fieldcontain">
					<span id="fwsShop-label" class="property-label"><g:message code="fwsClient.fwsShop.label" default="Fws Shop" /></span>
					
						<span class="property-value" aria-labelledby="fwsShop-label"><g:link controller="fwsShop" action="show" id="${fwsClientInstance?.fwsShop?.id}">${fwsClientInstance?.fwsShop?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="fwsClient.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${fwsClientInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="fwsClient.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${fwsClientInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="fwsClient.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${fwsClientInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.qq}">
				<li class="fieldcontain">
					<span id="qq-label" class="property-label"><g:message code="fwsClient.qq.label" default="Qq" /></span>
					
						<span class="property-value" aria-labelledby="qq-label"><g:fieldValue bean="${fwsClientInstance}" field="qq"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="fwsClient.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${fwsClientInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fwsClientInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="fwsClient.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${fwsClientInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${fwsClientInstance?.id}" />
					<g:link class="edit" action="edit" id="${fwsClientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
