<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Ingredientes</title>
</head>
<body>

<form action="controlleringredientes" method="post">

	<label>Nome</label>
	<input type="text" name="nome"/>
	<br/>
	
	<label>Unidade de medida</label>
	<input type="text" name="unidademedida"/>
	<br/>
	
	<input type="submit" value="Salvar" />

</form>

</body>
</html>