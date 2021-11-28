<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/geral.css" rel="stylesheet">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
	<body>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}
</style>
		<c:import url="utils/header.jsp"/>
		
		<div class="container" style="margin-top:50px">
			<h3 style="text-align: center;font-family:'Poppins';">Acesse sua Conta!</h3>
			
			<div class="align-items-center">
				<form action="loginservlet" method="post">
				
					<div class="row justify-content-center">
					
						<div class="col-6">
							<label>Email</label>
							<input type="email" name="user" class="form-control"/>
							<br/>
						</div>
						
					</div>
					
					<div class="row justify-content-center">
						<div class="col-6">
							<label>Senha</label>
							<input type="password" name="pwd" class="form-control"/>
							<br/>
						</div>
					</div>
					
					<div class="row justify-content-center">
						<div class="col-6">
							<input type="submit" value="Entrar" class="btn btn-primary" />
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>