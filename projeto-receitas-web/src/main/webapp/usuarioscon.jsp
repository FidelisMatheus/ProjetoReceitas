<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/consultar.css" rel="stylesheet">
<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
	<body>
		
		<c:import url="utils/header.jsp"/>
		
		<div class="container">
			
			<div class="btn-add">
			<a href="usuariosadd.jsp">Novo Usuário</a>
			</div>
			
			<jsp:useBean id="daousuario" class="dao.UsuarioDao"/>
			<c:set var="listadeusuarios" value="${daousuario.all}"/>
			
			<c:if test="${not empty listadeusuarios }">
				<table class="table">
					<thead>
						<tr style="background: linear-gradient(320deg, #EF7D00, #FFD922); border-bottom: 2px solid transparent;">
							<th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'" scope="col">Nome</th>
							<th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'" scope="col">Localização</th>
							<th  style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"scope="col">E-mail</th>
							<th  style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"scope="col">Admin</th>
							<th  style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"scope="col">Ações</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="usuario" items="${ listadeusuarios }">
							<tr style="background-color: #e5e4e2;">
								<td scope="row">${ usuario.nome }</td>
								<td scope="row">${ usuario.localizacao }</td>
								<td scope="row">${ usuario.email }</td>
								<td scope="row">${ usuario.admin }</td>
								<td scope="row">
								
									<div style="display:flex;flex-direction: row;justify-content: space-around;">
									<div class="btn-acao">
									<a href="${pageContext.request.contextPath}/controllerusuario?action=edit&id=${usuario.id}">Editar</a>
									</div>
									
									<div class="btn-acao">
									<a href="${pageContext.request.contextPath}/controllerusuario?action=del&id=${usuario.id}">Excluir</a>
									</div>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		
		</div>
		<c:import url="utils/footer.html"/>
	</body>
</html>