<%@page import="model.Receita" %>
<%@page import="dao.ReceitaDao" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Editar Receita</title>
</head>
<body>

    <c:import url="utils/header.jsp"/>
    <div class="container">
    
    <h1 style="text-align: center;">Editar receita</h1>
    
    <form action="controllerreceita" method="post">
        <input type="hidden" name="receitaid" value="${receita.id}"/>
        <div class="form-row">
            
            <div class="col" >        
	            <label>Título</label>
	            <input type="text" name="titulo" value="${receita.titulo}" class="form-control"/>
	            <br/>
            </div>
            
            <div class="col">
                <label>Descrição</label>
                <input type="text" name="descricao" value="${receita.descricao}" class="form-control"/>
                <br/>
            </div>
            
            <div class="col">
                <label>Modo de Preparo</label>
                <input type="text" name="mododepreparo" value="${receita.modoPreparo}" class="form-control"/>
                <br/>
            </div>
            
            <div class="col">
                <label>Porção</label>
                <input type="text" name="porcao" value="${receita.porcao}" class="form-control"/>
                <br/>
            </div>
            
            <div class="col">
                <label>Tempo de Preparo</label>
                <input type="text" name="tempopreparo" value="${receita.descricao}" class="form-control"/>
                <br/>
            </div>
		        <label>Url Foto</label>
		        <input type="file" name="urlfoto" value="${receita.urlfoto}" class="form-control"/>
		        <br/>		            
            <div class="col">
            
            </div>
            
        </div>                    
                
         <div style=" display: flex; margin-top: 20px; justify-content: center; align-items: center;">               
                <input type="submit" value="Salvar"class="btn btn-primary" style="margin-top 20px;"/>
         </div>
    </form>
    </div>
    <c:import url="utils/footer.html"/>
</body>
</html>

