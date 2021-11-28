<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Ingrediente"%>
<%@page import="dao.IngredienteDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consultar Ingredientes</title>
</head>
<body>

<a href="ingadd.jsp">Novo Ingrediente</a>

<jsp:useBean id="daoing" class="dao.IngredienteDao"/>
<c:set var="listadeIng" value="${daoing.all}"/>

<c:if test="${not empty listadeIng}">

	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Unidade de Medida</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="ingrediente" items="${listadeIng}">
			<tr>
				<td>${ ingrediente.nome }</td>
				<td>${ ingrediente.unidadeMedida }</td>

				<td>
				<a href="${pageContext.request.contextPath}/ControllerIngredientes?action=edit&id=${ingrediente.id}">Editar</a>
				<a href="${pageContext.request.contextPath}/ControllerIngredientes?action=del&id=${ingrediente.id}">Excluir</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</c:if>

</body>
</html>