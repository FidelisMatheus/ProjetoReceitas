<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/forms.css" rel="stylesheet">
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Cadastre-se</title>
</head>
	<body>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}
</style>
		<c:import url="utils/header.jsp"/>
		
		<div class="container" style="padding-left: 200px; padding-right: 200px">
			<h1 style="text-align: center; font-family:'Poppins';font-size: 32px;padding-top: 40px;">Bem-Vindo!</h1>
			<h3 style="text-align: center; font-family: 'Poppins';
    font-size: 22px;">Cadastre-se em nosso site</h3>
				<form action="controllerusuario" method="post">
				
					<div class="form-geral">
						
						<div class="row">
							<div class="col">
								<input type="text" placeholder="Nome" name="nome" class="form-style"/>
								<br/>
							</div>
								
							<div class="col">
								<input type="password" placeholder="Senha" name="senha" class="form-style"/>
								<br/>
							</div>
						</div>
						
						<div class="row">
							<div class="col">
								<input type="text" placeholder="Data de Nascimento" name="datanascimento" class="form-style"/>
								<br/>
							</div>
								
							<div class="col">
								<input type="text" placeholder="Localização" name="localizacao" class="form-style"/>
								<br/>
							</div>
						</div>
							
						<div class="row">
							<div class="col">
								<input type="text" placeholder="E-mail" name="email" class="form-style"/>
								<br/>
							</div>
								
							<div class="col">
								<input type="text" placeholder="Admin" name="admin" class="form-style"/>
								<br/>
							</div>
						</div>
						
						<div style="padding-top:20px">
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
					<div style="text-align:center; margin-top: 10px">
					<input style="margin: 0 auto" type="submit" value="Cadastrar" class="btn-confirmar" /></div>
				</form>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>