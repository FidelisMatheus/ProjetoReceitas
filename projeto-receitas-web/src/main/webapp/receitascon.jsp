<%@page import="dao.ReceitaDao" %>
<%@page import="model.Receita" %>
<%@page import="java.util.List" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Receitas</title>
</head>
<body>

    <a href="receitasadd.jsp">Nova Receita</a>
    
    <jsp:useBean id="daoreceita" class="dao.ReceitaDao" />
    <c:set var="listadereceitas" value="${daoreceita.all}"/>
    
    <c:if test="${ not empty listadereceitas }">
        
        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Descrição</th>
                    <th>Modo de Preparo</th>
                    <th>Porção</th>
                    <th>Tempo de Preparo</th>
                    <th>Ações</th>
                </tr>                                
            </thead>
            <tbody>
                
                <c:forEach var="receita" items="${listadereceitas}">
                    <tr>
                        <td>${receita.titulo}</td>
                        <td>${receita.descricao}</td>
                        <td>${receita.modoPreparo}</td>
                        <td>${receita.porcao}</td>
                        <td>${receita.tempoPreparo}</td>
                        
                        <td>
                            <a href="${pageContext.request.contextPath}/controllerreceita?action=edit&id=${receita.id}">Editar</a>
                            <a href="${pageContext.request.contextPath}/controllerreceita?action=del&id=${receita.id}">Excluir</a>
                        </td>
                                                                    
                    </tr>                
                </c:forEach>
            </tbody>            
        </table>    
    </c:if>
    
</body>
</html>