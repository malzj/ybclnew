<%@ page import="cbjlfws.CarMessage" %>



<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'carName', 'error')} ">
	<label for="carName">
		<g:message code="carMessage.carName.label" default="Car Name" />
		
	</label>
	<g:textField name="carName" value="${carMessageInstance?.carName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'carNumber', 'error')} ">
	<label for="carNumber">
		<g:message code="carMessage.carNumber.label" default="Car Number" />
		
	</label>
	<g:textField name="carNumber" value="${carMessageInstance?.carNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'carShelfNumber', 'error')} ">
	<label for="carShelfNumber">
		<g:message code="carMessage.carShelfNumber.label" default="Car Shelf Number" />
		
	</label>
	<g:textField name="carShelfNumber" value="${carMessageInstance?.carShelfNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'carType', 'error')} ">
	<label for="carType">
		<g:message code="carMessage.carType.label" default="Car Type" />
		
	</label>
	<g:textField name="carType" value="${carMessageInstance?.carType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'carUserName', 'error')} ">
	<label for="carUserName">
		<g:message code="carMessage.carUserName.label" default="Car User Name" />
		
	</label>
	<g:textField name="carUserName" value="${carMessageInstance?.carUserName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'engineNumber', 'error')} ">
	<label for="engineNumber">
		<g:message code="carMessage.engineNumber.label" default="Engine Number" />
		
	</label>
	<g:textField name="engineNumber" value="${carMessageInstance?.engineNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'equipmentId', 'error')} ">
	<label for="equipmentId">
		<g:message code="carMessage.equipmentId.label" default="Equipment Id" />
		
	</label>
	<g:textField name="equipmentId" value="${carMessageInstance?.equipmentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'fwsClient', 'error')} required">
	<label for="fwsClient">
		<g:message code="carMessage.fwsClient.label" default="Fws Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fwsClient" name="fwsClient.id" from="${cbjlfws.FwsClient.list()}" optionKey="id" required="" value="${carMessageInstance?.fwsClient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'fwsShop', 'error')} required">
	<label for="fwsShop">
		<g:message code="carMessage.fwsShop.label" default="Fws Shop" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fwsShop" name="fwsShop.id" from="${cbjlfws.FwsShop.list()}" optionKey="id" required="" value="${carMessageInstance?.fwsShop?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: carMessageInstance, field: 'money', 'error')} ">
	<label for="money">
		<g:message code="carMessage.money.label" default="Money" />
		
	</label>
	<g:textField name="money" value="${carMessageInstance?.money}"/>
</div>

