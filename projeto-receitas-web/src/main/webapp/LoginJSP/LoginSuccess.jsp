<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	//allow access only if session exists
	String user = (String) session.getAttribute("user"); //recebemos a sessao ativa
	%>
	<h3>
		Hi
		Login successful.</h3>
	<br> User=<%=user%>
	<br>
	<a href="../Home.jsp">Checkout Page</a>
	<form action="../logoutservlet" method="post">
		<input type="submit" value="Sair">
	</form>
</body>
</html>