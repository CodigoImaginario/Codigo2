<%@ page import="betaimaginario.Tutoriales" %>



<div class="fieldcontain ${hasErrors(bean: tutorialesInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tutoriales.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tutorialesInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialesInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="tutoriales.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${tutorialesInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialesInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="tutoriales.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${tutorialesInstance?.url}"/>
</div>







