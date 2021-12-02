<%@page import="dao.ReceitaDao" %>
<%@page import="model.Receita" %>
<%@page import="java.util.List" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<link href="css/consultar.css" rel="stylesheet">

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
     rel="stylesheet"
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
     crossorigin="anonymous">

<title>Lista de Ingredientes</title>
</head>
<body>
        <c:import url="utils/header.jsp" />
        <div style="margin: 3% auto"></div>
        <div class="container">
            <div>
                <h3>Ingredientes da receita</h3>
            </div> 
            <input type="hidden" name="receitaid" value="${receita.id}"/>
            <c:set var="ingredientes" value="${fn:split(receita.descricao,';')}"/>

            <table class="table">
            <thead>
            <tr
               style="background: linear-gradient(320deg, #EF7D00, #FFD922); border-bottom: 2px solid transparent;">
               <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                  scope="col">Ingredientes</th>
            </tr>
            </thead>
            <tbody>
                
                <c:forEach var="ing" items="${ingredientes}">
	                <tr>                    
	                    <td scope="row">${ing}</td>                                
	                </tr>               
                
                </c:forEach>
            </tbody>
          </table>  
          <div class="btn-acao">
                <a href="https://www.mercadolivre.com.br/ofertas/supermercado#nav-header" target="_blank">Buscar itens no Mercado Livre</a>
            </div>                   
        </div>
        <c:import url="utils/footer.html"/>
</body>
</html>