<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
		<h1>Cadastro de Usuarios</h1>
		<form action="controllerusuario" method="post">
			<label>Nome</label>
			<input type="text" name="nome"/>
			<br/>
			
			<label>Senha</label>
			<input type="text" name="senha"/>
			<br/>
			
			<label>Data de Nascimento</label>
			<input type="text" name="datanascimento"/>
			<br/>
			
			<label>Localização</label>
			<input type="text" name="localizacao"/>
			<br/>
			
			<label>Sexo</label>
			<input type="text" name="sexo"/>
			<br/>
			
			<label>Email</label>
			<input type="text" name="email"/>
			<br/>
			
			<label>Admin</label>
			<input type="text" name="admin"/>
			<br/>
			
			<input type="submit" value="Salvar" />
		</form>
	</body>
</html>