<%@page import="dao.ReceitaDao" %>
    <%@page import="model.Receita" %>
        <%@page import="java.util.List" %>

            <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

                    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
                        <!DOCTYPE html>
                        <html>
                        <link href="css/consultar.css" rel="stylesheet">

                        <head>

                            <meta charset="ISO-8859-1">
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                                rel="stylesheet"
                                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                                crossorigin="anonymous">

                            <title>Lista de Receitas</title>
                        </head>

                        <body>

                            <c:import url="utils/header.jsp" />
                            <div style="margin: 3% auto"></div>
                            <div class="container">

                                <div class="btn-add">
                                    <a href="receitasadd.jsp">Nova Receita</a>
                                </div>

                                <jsp:useBean id="daoreceita" class="dao.ReceitaDao" />
                                <c:set var="listadereceitas" value="${daoreceita.all}" />

                                <c:if test="${ not empty listadereceitas }">

                                    <table class="table">
                                        <thead>
                                            <tr
                                                style="background: linear-gradient(320deg, #EF7D00, #FFD922); border-bottom: 2px solid transparent;">
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">T�tulo</th>
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">Descri��o</th>
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">Modo de Preparo</th>
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">Por��o</th>
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">Tempo de Preparo</th>
                                                <th style="color:white;font-weight:500;font-size:15px;font-family:'Poppins'"
                                                    scope="col">A��es</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach var="receita" items="${listadereceitas}">
                                                <tr style="background-color: #e5e4e2;">
                                                    <td scope="row">${receita.titulo}</td>
                                                    <td scope="row">${receita.categoria}</td>
                                                    <td scope="row">${receita.modoPreparo}</td>
                                                    <td scope="row">${receita.porcao}</td>
                                                    <td scope="row">${receita.tempoPreparo}</td>
                                                    <td scope="row">${receita.descricao}</td>

                                                    <td scope="row">

                                                        <div
                                                            style="display:flex;flex-direction: row;justify-content: space-around;">
                                                            <div class="btn-acao">
                                                                <a
                                                                    href="${pageContext.request.contextPath}/controllerreceita?action=edit&id=${receita.id}">Editar</a>
                                                            </div>

                                                            <div class="btn-acao">
                                                                <a
                                                                    href="${pageContext.request.contextPath}/controllerreceita?action=del&id=${receita.id}">Excluir</a>
                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                            </div>
                            <c:import url="utils/footer.html" />
                        </body>

                        </html>