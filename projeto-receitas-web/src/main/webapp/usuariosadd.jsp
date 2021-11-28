<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<c:import url="utils/header.jsp"/>
		
		<div class="container">
			<h1 style="text-align: center;">Bem-Vindo!</h1>
			<h3 style="text-align: center;">Cadastre-se em nosso site</h3>
				<form action="controllerusuario" method="post">
				
					<div class="form-row">
						
						<div class="row">
							<div class="col">
								<label>Nome</label>
								<input type="text" name="nome" class="form-control"/>
								<br/>
							</div>
								
							<div class="col">
								<label>Senha</label>
								<input type="password" name="senha" class="form-control"/>
								<br/>
							</div>
						</div>
						
						<div class="row">
							<div class="col">
								<label>Data de Nascimento</label>
								<input type="text" name="datanascimento" class="form-control"/>
								<br/>
							</div>
								
							<div class="col">
								<label>Localização</label>
								<input type="text" name="localizacao" class="form-control"/>
								<br/>
							</div>
						</div>
							
						<div class="row">
							<div class="col">
								<label>Email</label>
								<input type="text" name="email" class="form-control"/>
								<br/>
							</div>
								
							<div class="col">
								<label>Admin</label>
								<input type="text" name="admin" class="form-control"/>
								<br/>
							</div>
						</div>
						
						<div>
							<label>Sexo</label><br/>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="Masculino" name="sexo"/>
								<label class="form-check-label" for="Masculino">Masculino</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="Feminino" name="sexo"/>
								<label class="form-check-label" for="Feminino">Feminino</label>
							</div>
						</div>
						
					</div>
					<input style="margin: 0 auto" type="submit" value="Cadastrar" class="btn btn-primary" />
				</form>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>