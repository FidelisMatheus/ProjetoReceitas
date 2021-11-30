<%@page import="java.net.HttpURLConnection" %>
	<%@page import="java.net.URL" %>
		<%@page import="java.net.http.HttpRequest" %>
			<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
				<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
					<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>

						<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
							%>

							<!DOCTYPE html>
							<html>
							<link href="css/geral.css" rel="stylesheet">

							<head>
								<meta charset="ISO-8859-1">
								<meta name="viewport" content="width=device-width, initial-scale=1">
								<title>Bem-vindo!</title>
								<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
									rel="stylesheet"
									integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
									crossorigin="anonymous">

								<script type="text/javascript"
									src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>

							</head>

							<body>
								<style>
									@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap');
									}
								</style>

								<c:import url="utils/header.jsp" />

								<div class="container">

									<div style="margin: 5% auto"></div>


									<!-- auth do mercado livre -->
									<input id="sendApi" type="submit" class="btn btn-primary"
										value="Autorizar Mercado Livre" />

									<div style="margin: 5% auto"></div>

									<h1 style="text-align: center; color:black; font-family:'Poppins';font-size: 28px;">
										DESTAQUES</h1>

									<div style="margin: 5% auto"></div>

									<div class='row d-flex justify-content-center' style="align: center;">
										<div class="card" style="width: 50rem;">
											<img class="card-img-top" src="<c:url value=" ./images/bolo.jpg" />"
											alt="Imagem de capa do card"/>
											<div class="card-body">
											</div>
										</div>
									</div>

									<!-- Divisor -->
									<div style="margin: 5% auto"></div>

									<div class='row d-flex justify-content-center'>

										<div class="col-2"></div>

										<div class="card col" style="width: 18rem;">
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo2.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
											</div>
										</div>

										<div class="col-1"></div>

										<div class="card col" style="width: 18rem;">
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo2.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
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
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
											</div>
										</div>

										<div class="col-1"></div>

										<div class="card col" style="width: 18rem;">
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
											</div>
										</div>

										<div class="col-2"></div>
									</div>

									<!-- Divisor -->
									<div style="margin: 5% auto"></div>

									<div class='row d-flex justify-content-center'>

										<div class="col-2"></div>

										<div class="card col" style="width: 18rem;">
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
											</div>
										</div>

										<div class="col-1"></div>

										<div class="card col" style="width: 18rem;">
											<img class="card-img-top" src="<c:url value=" ./images/paoDeQueijo.jpg" />"
											alt="Imagem de capa do card">
											<div class="card-body">
												<p class="card-text">Um exemplo de texto r�pido para construir o t�tulo
													do card e fazer preencher o conte�do do card.</p>
											</div>
										</div>

										<div class="col-2"></div>
									</div>

								</div>


								<c:import url="utils/footer.html" />
							</body>


							</html>