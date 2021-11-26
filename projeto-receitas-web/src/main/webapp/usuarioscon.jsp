<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
	<body>
		
		<c:import url="header.jsp"/>
		
		<div class="container">
			<a href="usuariosadd.jsp">Novo Usuário</a>
			
			<jsp:useBean id="daousuario" class="dao.UsuarioDao"/>
			<c:set var="listadeusuarios" value="${daousuario.all}"/>
			
			<c:if test="${not empty listadeusuarios }">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Nome</th>
							<th scope="col">Localizacao</th>
							<th scope="col">Email</th>
							<th scope="col">Admin</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="usuario" items="${ listadeusuarios }">
							<tr>
								<td scope="row">${ usuario.nome }</td>
								<td scope="row">${ usuario.localizacao }</td>
								<td scope="row">${ usuario.email }</td>
								<td scope="row">${ usuario.admin }</td>
								<td scope="row">
									<a href="${pageContext.request.contextPath}/controllerusuario?action=edit&id=${usuario.id}">Editar</a>
									<a href="${pageContext.request.contextPath}/controllerusuario?action=del&id=${usuario.id}">Excluir</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		
		</div>
		<c:import url="footer.html"/>
	</body>
</html>