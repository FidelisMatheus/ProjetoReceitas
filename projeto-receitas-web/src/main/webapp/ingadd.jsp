<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="model.Ingrediente"%>
<%@page import="dao.IngredienteDao"%>
<%@page import="enuns.UnidadeMedida"%>
<%@page import="servlet.ControllerIngredientes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Ingredientes</title>
</head>
<body>

<% UnidadeMedida[] unidades = UnidadeMedida.values(); %>


<form action="controlleringredientes" method="post">

	<label>Nome</label>
	<input type="text" name="nome"/>
	<br/>
	
	<label>Unidade de medida</label>
	<select name="unidadeMedida">
   <c:forEach items="<%=unidades%>" var="item">
    <option>${item}</option>
</c:forEach>
</select>
	<br/>
	
	<input type="submit" value="Salvar" />

</form>

</body>
</html>