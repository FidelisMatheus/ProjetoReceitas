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
		
		<% 
			session = request.getSession();
			int iduser = (int) session.getAttribute("id");
		%>
		
		<div class="container">
			<h1 style="text-align: center;">Editar Cadastro</h1>
			
			<form action="controllerusuario" method="post">
				
				<input type="hidden" name="usuarioid" value="${usuario.id}"/>
				<input type="hidden" name="usuarioid" value="${ iduser }"/>
				
				<div class="form-row">
  					
  					<div class="row">
						<div class="col">
							<label class="form-label">Nome</label>
							<input type="text" name="nome" value="${ usuario.nome }" class="form-control"/>
							<br/>
						</div>
						
						<div class="col">
							<label>Senha</label>
							<input type="password" name="senha" value="${ usuario.senha }" class="form-control"/>
							<br/>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<label>Data de Nascimento</label>
							<input type="text" name="datanascimento" value="<fmt:formatDate value="${usuario.dataNascimento }" pattern="dd/MM/yyyy" />" class="form-control" /> 
							<br/>
						</div>
						
						<div class="col">
							<label>Localização</label>
							<input type="text" name="localizacao" value="${ usuario.localizacao }" class="form-control"/>
							<br/>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<label>Email</label>
							<input type="text" name="email" value="${ usuario.email }" class="form-control"/>
							<br/>
						</div>
						
						<div class="col">
							<label>Admin</label>
							<input type="text" name="admin" value="${ usuario.admin }" class="form-control"/>
							<br/>
						</div>
					</div>
					
					<div>
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
				
				<input type="submit" value="Salvar" class="btn btn-primary"/>
			</form>
		</div>
		
		<c:import url="utils/footer.html"/>
	</body>
</html>