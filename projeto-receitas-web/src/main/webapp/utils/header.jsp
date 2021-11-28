<%@page import="model.Usuario"%>
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
	<script  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"  crossorigin="anonymous"></script>
	<script  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"  integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"  crossorigin="anonymous"></script>
	<script  src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"  integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"  crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		
		  <div class="container-fluid">
		  
			    <a class="navbar-brand" href="Home.jsp">
			    	<img src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
			    	Receitas de Casa
			    </a>
			    
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    
			    <!-- Pesquisa
			    	<form method="post" action="pagina_de_resultados.html">
					  <input type="text" name="q" value="Pesquisar...">
					  <input type="submit" value="Pesquisar">
					</form>
			     -->
			    
			    <div class="nav justify-contente-center">
				    <form class="d-flex">
				        <input class="form-control me-3" type="search" placeholder="Pesquise aqui" aria-label="Search">
				        <button class="btn btn-outline-success" type="submit">Pesquisar</button>
				    </form>
			    </div>
		    
			    <div>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				    
					      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
					        <li class="nav-item">
					          <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
					        </li>
					        
					        <li class="nav-item">
					          <a class="nav-link active" href="usuariosadd.jsp">Cadastrar-se</a>
					        </li>
					        
					        <li class="nav-item">
					          <a class="nav-link active" href="#">Envie sua receita</a>
					        </li>
					        
					        <li>
					        	<% 
					        		String user = (String) session.getAttribute("user"); 
					        		if (user != null) {
					        			
				        			session = request.getSession();
					        	%>
						        	<div class="dropdown">
									  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									    ${ user }
									  </button>
									  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									    <a class="dropdown-item" href="usuariosadd.jsp">Adicionar</a>
									    <a class="dropdown-item" href="usuarioscon.jsp">Ver todos</a>
									    <a class="dropdown-item" href="usuariosedit.jsp">Editar Cadastro</a>								    								    
									    <a class="dropdown-item" href="LoginJSP/Deslogar.jsp">Sair</a>	
									  </div>
									</div>
								<% } else { %>
									<a class="nav-link active" href="Login.jsp">Entrar</a>
								<% } %>
					        </li>
					      </ul>
				  	</div>
			  	</div>
		  	</div>
		 </nav>
	</div>
	  
	<!-- Categorias -->
	
	<div>
		<nav class="navbar navbar-dark bg-secundary" style="background-color: #778899;" >
		
		  <div class="container-fluid">
		  
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    <button type="button" class="btn btn-outline-light">Categoria</button>
		    
		  </div>
		  
		</nav>
	
	</div>
	  
	
</body>
</html>