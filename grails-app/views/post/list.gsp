
<%@ page import="org.nest5.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="post.category.label" default="Category" /></th>
					
						<g:sortableColumn property="title" title="${message(code: 'post.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'post.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="published" title="${message(code: 'post.published.label', default: 'Published')}" />
					
						<g:sortableColumn property="tags" title="${message(code: 'post.tags.label', default: 'Tags')}" />
					
						<th><g:message code="post.author.label" default="Author" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: postInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "content")}</td>
					
						<td><g:formatBoolean boolean="${postInstance.published}" /></td>
					
						<td>${fieldValue(bean: postInstance, field: "tags")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "author")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
