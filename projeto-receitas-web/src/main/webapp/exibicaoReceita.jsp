<%@page import="model.Receita"%>
<%@page import="dao.ReceitaDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="css/exibicao_receita.css" rel="stylesheet">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"  crossorigin="anonymous"></script>
	<script  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"  integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"  crossorigin="anonymous"></script>
	<script  src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"  integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"  crossorigin="anonymous"></script>
	
	<title>Receitas</title>
</head>
<body>
	<c:import url="utils/header.jsp"/>
	
		<div class="container">
			<input type="hidden" name="receitaid" value="${receita.id}"/>
			
			<div style="display:flex;justify-content: center;">
			<div style="margin-top: 75px; width:70%" class="card mb-2">
			  <img src="<c:url value="./images/paoDeQueijo.jpg" />" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 style="font-family: 'Poppins';text-align: center;" class="card-title">Card title</h5>
			    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			  </div>
			</div>
			</div>
			
			<div style="margin-top: 40px;" class="justify-content-center">
	            <div class="col" style="margin: 0 auto;">        
		            <label style="text-align:center">${receita.titulo}</label>
	            </div> 
	            
	            <div class="col" style="margin: 0 auto;">        
		            <label>Ingredientes:</label>
		            <br/>
		            <label>${receita.descricao}</label>
	            </div>
	            
	            <div class="col" style="margin: 0 auto;">        
		            <label>Modo de Preparo:</label>
		            <br/>
		            <label>${receita.modoPreparo}</label>
	            </div>
	            
	            <div class="col" style="margin: 0 auto;">        
		            <label>Porção:</label>
		            <br/>
		            <label>${receita.porcao}</label>
	           </div>
	           
	           <div class="col" style="margin: 0 auto;">        
		            <label>Tempo de Preparo:</label>
		            <br/> 
		            <label>${receita.tempoPreparo}</label>
	           </div>  
           </div> 
			<div class="btn-acao">
                <a href="${pageContext.request.contextPath}/ListaIngrediente?action=list&id=${receita.id}">Lista Ingredientes para Compra</a>
            </div>
		</div>
	
	<c:import url="utils/footer.html"/>
</body>
</html>