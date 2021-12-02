<%@page import="model.Receita" %>
<%@page import="dao.ReceitaDao" %>
<%@page import="enuns.CategoriaReceita" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<link href="css/forms.css" rel="stylesheet">
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Editar Receita</title>
</head>
<body>

	<style>	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');}					
</style>

    <c:import url="utils/header.jsp"/>
    
    <div class="container" style="padding-left: 200px; padding-right: 200px">
						<div style="margin: 5% auto"></div>
						<h3 style="text-align: center; font-family:'Poppins';font-size: 26px;padding-top: 30px;padding-bottom:15px;">Editar Receita</h3>
        <form action="controllerreceita" method="post">
        <% CategoriaReceita[] categorias = CategoriaReceita.values(); %>
        
        <input type="hidden" name="receitaid" value="${receita.id}"/>
        <div style="margin-top:10px" class="col">
									<label style="margin-right:7px;text-align:center">Nome da Receita:</label>
									<input style="margin-top:0 !important;" type="text" name="titulo" value="${receita.titulo}" class="form-style" />
								</div>
								<div style="margin: 2% auto"></div>
								<div style="margin-top: 30px" class="row">
									<div class="col-6">
										<label >Envie Fotos:</label>
										<input style="border-radius: 15px;" type="file" name="dataFile" value="${receita.urlfoto}" class="form-control" />
									</div>
									<div class="col-6">
										<label>Categoria:</label>
										<select name="categoria" class="form-style">
											<c:forEach items="<%=categorias%>" var="item">
												<option>${item}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="row">
									<div style="display: flex;flex-direction: column;align-items: center;" class="col-6">
										<h4
											style="display: flex; margin-top: 30px; justify-content: center; align-items: center; font-family:'Poppins';font-size: 20px;">
											Porções</h4>
										<label style="text-align:center;color: #868e96;font-size:15px">Coloque a quantidade de porções da receita</label>
										<input type="text" name="porcao" class="form-style" />
									</div>

									<div style="display: flex;flex-direction: column;align-items: center;" class="col-6">
										<h4
											style="display: flex; margin-top: 30px; justify-content: center; align-items: center; font-family:'Poppins';font-size: 20px;">
											Tempo de Preparo</h4>
										<label style="text-align:center;color: #868e96;font-size:15px" >Coloque aqui o tempo de preparo da receita</label>
										<input type="text" name="tempopreparo" value="${receita.tempopreparo}" class="form-style" />
									</div>
								</div>


								<div style="display: flex;flex-direction: column;align-items: center;" class="col">
									<h4
										style="display: flex; margin-top: 30px; justify-content: center; align-items: center; font-family:'Poppins';font-size: 20px;">
										Ingredientes</h4>
									<label style="text-align:center;color: #868e96;font-size:15px">Liste os ingredientes e suas quantidades aqui:</label>
									<textarea value="${receita.descricao}" style="border-radius: 10px;border: 1px solid #DBDBDB;margin-top: 15px; width: 100%; padding: 0.375rem 0.75rem;  font-size: 1rem;"
									 id="ingredientes" rows="5" name="ingredientes"
										placeholder="Exemplo: &#10;1 xï¿½cara de Farinha de Trigo;&#10;2 colheres de sopa de fermento."></textarea>
								</div>

								<div style="display: flex;flex-direction: column;align-items: center;" class="col">
									<h4
										style="display: flex; margin-top: 30px; justify-content: center; align-items: center; font-family:'Poppins';font-size: 20px;">
										Modo de preparo</h4>
									<label style="text-align:center;color: #868e96;font-size:15px">Descreva o passo a passo do preparo sendo um passo por linha:</label>
									<textarea value="${receita.modoPreparo}" style="border-radius: 10px;border: 1px solid #DBDBDB;margin-top: 15px; width: 100%; padding: 0.375rem 0.75rem;  font-size: 1rem;"
									class=form-textarea id="modopreparo" rows="5" name="modopreparo"
										placeholder="Exemplo: &#10;Coloque a farinha na forma;&#10;Adicione leite."></textarea>
								</div>


								<input type="hidden" name="usuarioid" value="${iduser}" />

								<div
									style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
									<h3 style="display: flex; margin-top: 30px; justify-content: center; align-items: center; font-family:'Poppins';font-size: 20px;">Atenção antes de enviar</h3>
									<br />
								</div>
								<div
									style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
									<label style="text-align:center;color: #868e96;font-size:15px">
										Revise toda sua receita para que tenha certeza que não esta faltando nada.<br />

									</label>
								</div>
								<div
									style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
									<label style="text-align:center;color: #868e96;font-size:15px">
										Nï¿½o envie fotos de terceiros, apenas foto de sua autoria.<br />
									</label>
								</div>
								<div
									style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
									<label style="text-align:center;color: #868e96;font-size:15px">
										As informações poderão ser alteradas caso haja erros.<br />
									</label>
								</div>
								<div
									style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
									<input style="background: linear-gradient(54deg, #EF7D00, #FFD922); width: 150px;height: 45px;border-radius: 200px;color: #FFFFFF;border: none; font-size: 16px;
    margin-top: 2px;" type="submit" value="Concluir Edição" />
								</div>

						</form>
					</div>
					
    <c:import url="utils/footer.html"/>
</body>
</html>

