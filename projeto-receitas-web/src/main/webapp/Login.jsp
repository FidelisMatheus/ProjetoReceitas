<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
	<body>
		<c:import url="header.html"/>
		
		<div class="container">
			<h1 style="text-align: center;">Login</h1>
			<h3 style="text-align: center;">Acesse sua Conta!</h3>
				<form action="controllerusuario" method="post">
				
					<div class="row justify-content-center">
					
						<div class="col-6">
							<label>Email</label>
							<input type="email" name="email" class="form-control"/>
							<br/>
						</div>
						
					</div>
					
					<div class="row justify-content-center">
						<div class="col-6">
							<label>Senha</label>
							<input type="password" name="senha" class="form-control"/>
							<br/>
						</div>
					</div>
					
					<div style="justify: center;">
							<input type="submit" value="Entrar" class="btn btn-primary" />
					</div>
				</form>
		</div>
		
		<c:import url="footer.html"/>
	</body>
</html>