<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/forms.css" rel="stylesheet">
<link href="css/geral.css" rel="stylesheet">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Faça Login</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
	<body>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}
</style>
		<c:import url="utils/header.jsp"/>
		
		<div class="container" style="margin-top:50px">
			<h3 style="text-align: center;font-family:'Poppins'; margin-bottom:30px;">Acesse sua Conta!</h3>
			
			<div class="align-items-center">
				<form action="loginservlet" method="post">
				
				<div class="form-geral">
					<div class="">
					
						<div class="col-6">
							<label>Email:</label>
							<input type="email" name="user" class="form-style"/>
							<br/>
						</div>
						
					</div>
					
					<div class="">
						<div class="col-6">
							<label>Senha:</label>
							<input type="password" name="pwd" class="form-style"/>
							<br/>
						</div>
					</div>
					
					<div class="row justify-content-center">
						<div class="col-6">
						<div style="text-align:center;margin-top:30px;margin-right: 185px;">
							<input type="submit" value="Entrar" class="btn-confirmar" />
							</div>
						</div>
					</div>
					</div>
				</form>
			</div>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>