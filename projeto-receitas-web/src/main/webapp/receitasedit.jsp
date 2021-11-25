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
<title>Editar Receita</title>
</head>
<body>

    <form action="controllerreceita" method="post">
    
        <input type="hidden" name="receitaid" value="${receita.id}"/>
    
        <label>Título</label>
        <input type="text" name="titulo" value="${receita.titulo}"/>
        <br/>
        
        <label>Descrição</label>
        <input type="text" name="descricao" value="${receita.descricao}"/>
        <br/>
        
        <label>Modo de Preparo</label>
        <input type="text" name="mododepreparo" value="${receita.modoPreparo}"/>
        <br/>
        
        <label>Porção</label>
        <input type="text" name="porcao" value="${receita.porcao}"/>
        <br/>
        
        <label>Tempo de Preparo</label>
        <input type="text" name="tempopreparo" value="${receita.descricao}"/>
        <br/>
        
        <label>Url Foto</label>
        <input type="file" name="urlfoto" value="${receita.urlfoto}"/>
        <br/>
                
         <input type="submit" value="Salvar">
    
    </form>

</body>
</html>