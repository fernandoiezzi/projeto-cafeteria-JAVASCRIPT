<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cafés Uai</title>
<link rel="stylesheet" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="icon" href="img/logo.jpg">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body class="indexb">
<div class="mainnav">
     <div class="divlogo">
     <img class="logo" src="img/logo.jpg" width= "90 px" height=" 90px">
     </div> 
      <div class="links">
     <ul>
      <li><a href="index.jsp">Index</a></li>
          <li><a href="quemsomos.jsp">Quem Somos</a></li>
         <li><a href="cardapio.jsp">Cardápio</a></li>
         <li><a href="faleconosco.jsp">Fale Conosco</a></li>
         </ul>  
   </div>  
</div>
 <div class="login">
       <h1>Cadastro de login</h1>
       <form method="post" action="CadastrarLogin">
       <input type="text" name ="nome" placeholder="Nome">
       <br><br>
       <input type="password" name="senha" placeholder="Senha">
       <br><br>
       <input type="submit" class="btn btn-outline-secondary" value="Cadastrar">
       </form>
   </div>
</body>
<br>
<footer class="indexf">
© 2022 Cafeteria Mineira - Copyright
</footer>
</body>
</html>