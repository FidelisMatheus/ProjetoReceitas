<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Adicionar Receita</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
</head>
<body>
    <c:import url="header.html"/>
    
    <div class="container">
        <div style="margin: 5% auto"></div>
            <h3 style="text-align: center;">Cadastre sua Receita</h3>
		<form action="controllerreceita" method="post">
		  <div class="form-row">
		     
		     <div class="col">		      
			     <label>Título da Receita</label> 
			     <input type="text" name="titulo" class="form-control"/>			     			      
			 </div>
			 
			 <div class="col">
			     <label>Descrição</label>
                 <input type="text" name="descricao" class="form-control"/> 
			 </div>
			 
			 <div class="col">			     
                <label>Modo de Preparo</label> 
                <input type="text" name="modoPreparo" class="form-control"/> 
			 </div>   
            
            <div class="col">
                <label>Porção</label>
                <input type="text" name="porcao" class="form-control"/> 
            </div>
            
            <div class="col">
                <label>Tempo de Preparo</label> 
                <input type="text" name="tempoPreparo" class="form-control"/>
            </div>			
			
			<div class="col">
			     <label>Url Foto</label> 
                <input type="file" name="urlFoto" class="form-control"/>            
			</div>
			
			<div style=" display: flex; margin-top: 20px; justify-content: center; align-items: center;">			     
                <input type="submit" value="Salvar"class="btn btn-primary" style="margin-top 20px;"/>
			</div>

	       </div>
		</form>
    </div>

    <c:import url="footer.html"/>
</body>
</html>