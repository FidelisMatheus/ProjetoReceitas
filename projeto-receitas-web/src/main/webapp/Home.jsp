 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="tag"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href=".css/geral.css" rel="stylesheet">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bem-vindo!</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}
    </style>
</head>
	<body>
	
		<c:import url="utils/header.jsp"/>
		
		<div class="container">
		  <!--<form action="MecadoLivre" method="get">
		       <div style="text-align: center;font-size: 18px;font-family: 'Poppins';">
		          <input class="btn btn-primary"  value="Autorizar Mercado Livre" type="submit"/>
		      </div> 
			</form>-->
			<div style="margin: 5% auto"></div>
			
			<h1 style="text-align: center; color:black; font-family:'Poppins';font-size: 28px;">DESTAQUES</h1>
			
			<div style="margin: 5% auto"></div>
			
			<div class='row d-flex justify-content-center' style="align: center;">
				<div class="card" style="width: 39rem;">
				  <img class="card-img-top" src="<c:url value="./images/esfirra.jpg" />" alt="Imagem de capa do card"/>
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">ESFIHA DE CARNE ADAPTADA</h3>
				   <p style="color: #868e96;" class="card-text">Deliciosa esfiha de carne, com uma massa bem fofa. � uma receita turca.</p>
				  </div>
				</div>
			</div>
			
		    <!-- Divisor -->
			<div style="margin: 5% auto"></div>
			
			<div class='row d-flex justify-content-center'>
				
				<div class="col-2"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/frango_milanesa.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">FIL� DE FRANGO � MILANESA</h3>
				    <p style="color: #868e96;" class="card-text">Delicioso fil� de frango � milanesa, muito crocante, �timo para por��es.</p>
				  </div>
				</div>
				
				<div class="col-1"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/fricasse.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">PANQUECA DE CARNE MO�DA</h3>
				    <p style="color: #868e96;" class="card-text">Deliciosa panqueca de carne mo�da, uma refei��o leve e rende 10 por��es.</p>
				  </div>
				</div>
				
				<div class="col-2"></div>
			</div>
			
		<!-- Divisor -->
			<div style="margin: 5% auto"></div>
			
			<h1 style="text-align: center; font-family:'Poppins';font-size: 28px;">RECENTES</h1>
			
		<!-- Divisor -->	
			<div style="margin: 5% auto"></div>
			
			<div class='row d-flex justify-content-center'>
				
				<div class="col-2"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/misto_forno.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">MISTO QUENTE DE FORNO</h3>
				    <p style="color: #868e96;" class="card-text">Delicioso misto-quente de forno, pra quem quer uma receita r�pida e muito gostosa.</p>
				  </div>
				</div>
				
				<div class="col-1"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/mousse_limao.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">MOUSSE DE LIM�O</h3>
				    <p style="color: #868e96;" class="card-text">Delicioso mousse de lim�o, pra quem quer uma sobremesa simples e r�pida de ser feita.</p>
				  </div>
				</div>
				
				<div class="col-2"></div>
			</div>
			
		<!-- Divisor -->	
			<div style="margin: 5% auto"></div>
			
			<div class='row d-flex justify-content-center'>
				
				<div class="col-2"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/panqueca.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">FRICASS� DE FRANGO</h3>
				    <p style="color: #868e96;" class="card-text">Delicioso fricass� de frango, receita f�cil e r�pido de se fazer.</p>
				  </div>
				</div>
				
				<div class="col-1"></div>
				
				<div class="card col" style="width: 18rem;">
				  <img class="card-img-top" src="<c:url value="./images/strogonoff.jpg" />" alt="Imagem de capa do card">
				  <div class="card-body">
				  <h3 style="text-align: center;font-size: 18px;font-family: 'Poppins';">ESTROGONOFE DA CASA</h3>
				    <p style="color: #868e96;" class="card-text">Delicioso estrogonofe da casa, �timo para refei��es em fam�lia. Rende 4 por��es.</p>
				  </div>
				</div>
				
				<div class="col-2"></div>
			</div>
			<div class="btn-pesq">
                <a href="receitascon.jsp" >Todas Receitas</a>
            </div>  
		</div>
		
		
		<c:import url="utils/footer.html"/>
	</body>
</html>
