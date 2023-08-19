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
<body class="falecb">
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
<form method="post" action="CadastrarFuncionario" class="form card" id="frm">
  <div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Nome</label>
  <input type="text" class="form-control" id="Digite o seu nome..." placeholder="Nome">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">E-mail</label>
  <input type="text" class="form-control" id="Digite o seu e-mail..." placeholder="E-mail">
</div>
<div class="mb-3">
    <label for="formGroupExampleInput2" class="form-label">Whatsapp</label>
  <input type="text" class="form-control" id="Digite o seu whatsapp..." placeholder="Whatsapp">
</div>
<div class="mb-3">
     <label for="formGroupExampleInput2" class="form-label">Informe o assunto</label>
  <select name="assunto" id="assunto">
       <option value="0">Selecione o assunto</option>
       <option value="1">Elogio</option>
       <option value="2">Reclamação</option>
       <option value="3">Sugestão</option>
       <option value="4">Dúvidas</option>
       </select>
       <br><br>
</div>
<div class="mb-3">
   <label for="exampleFormControlTextarea1" class="form-label">Deixe aqui a sua opinião</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
<div class="butao">
<button type="button" class="btn btn-outline-secondary">ENVIAR</button>
<button type="button" class="btn btn-outline-secondary">LIMPAR</button>
</div>
</form>
<footer class="falecf">© 2022 Cafeteria Mineira - Copyright</footer>
</body>
</html>