<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Ingrediente"%>
<%@page import="dao.IngredienteDao"%>
<%@page import="enuns.UnidadeMedida"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Ingrediente</title>
</head>
<body>

<form action="controlleringredientes" method="post">

<% UnidadeMedida[] unidades = UnidadeMedida.values(); %>

<input type="hidden" name="ingid" value="${ingrediente.id}"/>

	<label>Nome</label>
	<input type="text" name="nome" value="${ingrediente.nome}"/>
	<br/>
	
	<label>Unidade de medida</label>
	<select name="unidadeMedida">
   <c:forEach items="<%=unidades%>" var="item">
    <option>${item}</option>
</c:forEach>
	<br/>
	
	<input type="submit" value="Salvar" />

</form>


</body>
</html>