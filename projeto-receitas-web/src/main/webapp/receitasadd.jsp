<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adicionar Receita</title>
</head>
<body>


    <form action="controllerreceita" method="post">
     
        <label>T�tulo</label>
        <input type="text" name="titulo"/>
        <br/>
        
        <label>Descri��o</label>
        <input type="text" name="descricao"/>
        <br/>
        
        <label>Modo de Preparo</label>
        <input type="text" name="modoPreparo"/>
        <br/>
        
        <label>Por��o</label>
        <input type="text" name="porcao"/>
        <br/>
        
        <label>Tempo de Preparo</label>
        <input type="text" name="tempoPreparo"/>
        <br/>
        
        <label>Url Foto</label>
        <input type="file" name="urlFoto"/>        
        <br/>
        
        <input type="submit" value="Salvar">
        
     </form>
     


</body>
</html>