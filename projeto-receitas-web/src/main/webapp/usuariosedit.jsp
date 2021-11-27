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
		<c:import url="header.jsp"/>
		
		<div class="container">
			<form action="controllerusuario" method="post">
				<% 
					session = request.getSession();
					int iduser = (int) session.getAttribute("id");
				%>
				<input type="hidden" name="usuarioid" value="${usuario.id}"/>
				<input type="hidden" name="usuarioid" value="${ iduser }"/>
				
				<div class="form-row">
  
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
					
					<div class="col">
						<label>Data de Nascimento</label>
						<input type="text" name="datanascimento" value="<fmt:formatDate value="${aluno.dataNascimento }" pattern="dd/MM/yyyy" />" class="form-control" /> 
						<br/>
					</div>
					
					<div class="col">
						<label>Localização</label>
						<input type="text" name="localizacao" value="${ usuario.localizacao }" class="form-control"/>
						<br/>
					</div>
					
					<div class="col">
						<label>Sexo</label>
						<input type="text" name="sexo" value="${ usuario.sexo }" class="form-control"/>
						<br/>
					</div>
					
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
				
				<input type="submit" value="Salvar" class="btn btn-primary"/>
			</form>
		</div>
		
		<c:import url="footer.html"/>
	</body>
</html>