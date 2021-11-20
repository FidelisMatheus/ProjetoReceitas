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
		
		<form action="controllerusuario" method="post">
		
			<input type="hidden" name="usuarioid" value="${usuario.id}"/>
			
			<label>Nome</label>
			<input type="text" name="nome" value="${ usuario.nome }"/>
			<br/>
			
			<label>Senha</label>
			<input type="text" name="senha" value="${ usuario.senha }"/>
			<br/>
			
			<label>Data de Nascimento</label>
			<input type="text" name="datanascimento" value="${ usuario.datanascimento }"/>
			<br/>
			
			<label>Localização</label>
			<input type="text" name="localizacao" value="${ usuario.localizacao }"/>
			<br/>
			
			<label>Sexo</label>
			<input type="text" name="sexo" value="${ usuario.sexo }"/>
			<br/>
			
			<label>Email</label>
			<input type="text" name="email" value="${ usuario.email }"/>
			<br/>
			
			<label>Admin</label>
			<input type="text" name="admin" value="${ usuario.admin }"/>
			<br/>
			
			<input type="submit" value="Salvar"/>
			
		</form>
		
	</body>
</html>