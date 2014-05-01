
<%@ page import="betaimaginario.Tutoriales" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutoriales.label', default: 'TutorialesImaginario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tutoriales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tutoriales" class="content scaffold-show" role="main">
		    <g:render template="/tutoriales/Reproductor"/>
		    <g:render template="/tutoriales/SimpleEditor"/>
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tutoriales">
			
				<g:if test="${tutorialesInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tutoriales.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tutorialesInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialesInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="tutoriales.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${tutorialesInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialesInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="tutoriales.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${tutorialesInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tutorialesInstance?.id}" />
					<g:link class="edit" action="edit" id="${tutorialesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Borrar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
