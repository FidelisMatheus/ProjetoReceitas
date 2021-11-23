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