<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/forms.css" rel="stylesheet">
<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
	<body>
	<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}
</style>
		<c:import url="utils/header.jsp"/>
		
		<% 
			session = request.getSession();
			int iduser = (int) session.getAttribute("id");
		%>
		
		<div class="container">
			<h1 style="text-align: center; font-family:'Poppins';font-size: 32px;padding-top: 40px;">Editar Cadastro</h1>
			
			<form action="controllerusuario" method="post">
				
				<input type="hidden" name="usuarioid" value="${usuario.id}"/>
				<input type="hidden" name="usuarioid" value="${ iduser }"/>
				
				<div class="form-geral">
  					
  					<div class="row">
						<div class="col">
							<input type="text" placeholder="Nome" name="nome" value="${ usuario.nome }" class="form-style"/>
							<br/>
						</div>
						
						<div class="col">
							<input type="password" placeholder="Senha" name="senha" value="${ usuario.senha }" class="form-style"/>
							<br/>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<input type="text" placeholder="Data de Nascimento" name="datanascimento" value="<fmt:formatDate value="${usuario.dataNascimento }" pattern="dd/MM/yyyy" />" class="form-style" /> 
							<br/>
						</div>
						
						<div class="col">
							<input type="text" placeholder="Localização" name="localizacao" value="${ usuario.localizacao }" class="form-style"/>
							<br/>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<input type="text" placeholder="E-mail" name="email" value="${ usuario.email }" class="form-style"/>
							<br/>
						</div>
						
						<div class="col">
							<input type="text" placeholder="Admin" name="admin" value="${ usuario.admin }" class="form-style"/>
							<br/>
						</div>
					</div>
					
					<div style="padding-top:20px">
						<label>Sexo</label><br/>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="Masculino" name="sexo" value="${ usuario.sexo }"/>
							<label class="form-check-label" for="Masculino">Masculino</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="Feminino" name="sexo" value="${ usuario.sexo }"/>
							<label class="form-check-label" for="Feminino">Feminino</label>
						</div>
					</div>
				
				</div>
				<div style="text-align:center; margin-top: 10px">
					<input style="margin: 0 auto" type="submit" value="Salvar" class="btn-confirmar"/>
				</div>
			</form>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>