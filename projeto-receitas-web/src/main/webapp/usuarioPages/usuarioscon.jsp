<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
		<a href="usuariosadd.jsp">Novo Usuário</a>
		
		<jsp:useBean id="daousuario" class="dao.UsuarioDao"/>
		<c:set var="listadeusuarios" value="${daousuario.all}"/>
		
		<c:if test="${not empty listadeusuarios }">
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Localizacao</th>
						<th>Email</th>
						<th>Admin</th>
						<th>Ações</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="usuario" items="${ listadeusuarios }">
						<tr>
							<td>${ usuario.nome }</td>
							<td>${ usuario.localizacao }</td>
							<td>${ usuario.email }</td>
							<td>${ usuario.admin }</td>
							<td>
								<a href="${pageContext.request.contextPath}/controllerusuario?action=edit&id=${usuario.id}">Editar</a>
								<a href="${pageContext.request.contextPath}/controllerusuario?action=del&id=${usuario.id}">Excluir</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</body>
</html>