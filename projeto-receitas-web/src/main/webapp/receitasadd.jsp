<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="enuns.CategoriaReceita" %>	
	
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
	
	<!-- script para limpar o place holder dos campos antes de enviar o form -->
	<script>
	   $(function(){
		  $('[placeholder]').parents('form').bind('submit', function(e) {
		    var $form = $(e.target);
		    if(!!$form.data('binded') == false){
		      $(e.target).find('[placeholder]').each(function(i,el) {
		        if (el.val() == el.attr('placeholder')) {
		          el.val('');
		        }
		      });
		      $form.data('binded',true);
		    }
		  });
		});
	</script>

</head>
<body>

    <% CategoriaReceita[] categorias = CategoriaReceita.values(); %>
	<c:import url="utils/header.jsp" />

	<div class="container" style="padding-left: 200px; padding-right: 200px" >
		<div style="margin: 5% auto"></div>
		<h3 style="text-align: center;">ENVIAR RECEITA</h3>
		<form action="controllerreceita" method="post" enctype="multipart/form-data">

			<%
				session = request.getSession();
				Integer iduser = (Integer) session.getAttribute("id");
			%>
    		     
		     <div class="col">		 		         
			     <label>Nome da Receita</label> 
			     <input type="text" name="titulo" class="form-control"/>			     			      
			 </div>
			 <div style="margin: 2% auto"></div>
			 <div class="row">
				 <div class="col-6">
	                 <label>Url Foto</label> 
	                <input type="file" name="dataFile" class="form-control"/>            
	            </div>
				 <div class="col-6">
				     <label>Categoria</label>
				     <select name="categoria" class="form-control">
				        <c:forEach items="<%=categorias%>" var="item">
				            <option>${item}</option>
				        </c:forEach>
				     </select> 
				 </div>
			 </div>
			 <div class="row">
				<div class="col-6">
				     <h4 style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">PORÇÃO</h4>
	                <label>Coloque a quantidade de porções da receita</label>
	                <input type="text" name="porcao" class="form-control"/> 
	            </div>
	            
	            <div class="col-6">
	                <h4 style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">TEMPO DE PREPARO</h4>
	                <label>Coloque aqui o tempo de preparo da receita</label> 
	                <input type="text" name="tempopreparo" class="form-control"/>
	            </div>          
			 </div>
			 
			 
			  <div class="col">      
                <h4 style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">INGREDIENTES</h4>          
                <label>Liste os ingredientes e suas quantidades aqui</label> 
                <textarea class="form-control" id="descricao" rows="5" name="ingredientes" placeholder="Exemplo: &#10;1 xícara de Farinha de Trigo;&#10;2 colheres de sopa de fermento."></textarea>
             </div>
			 
			 <div class="col">			     
                <h4 style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">MODO DE PREPARO</h4> 
                <label>Descreva o passo a passo do preparo sendo um passo por linha</label>
                <textarea class="form-control" id="modopreparo" rows="5" name="modopreparo" placeholder="Exemplo: &#10;Coloque a farinha na forma;&#10;Adicione leite."></textarea>
			 </div>   

			
			<input type="hidden" name="usuarioid" value="${iduser}"/>

		
			<div
				style="display: flex; margin-top: 20px; justify-content: center; align-items: center;">
				<input type="submit" value="Enviar Receita" class="btn btn-primary"
					/>
			</div>
			
		</form>
	</div>

	<c:import url="utils/footer.html" />
</body>
</html>