<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Área do usuário</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="checandosessao.jsp"></jsp:include>
<a href="LogoutServlet"><input type="submit" class="btn btn-outline-success" value="Logout"></a>
<h1>Área do usuário</h1>
<br>
<h2>Cadastros</h2>
<a href="Cadastrarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Produtos"></a>
<a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Vendas"></a>
<a href="cadastrarcliente.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Clientes"></a>
<a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Funcionários"></a>
<h2>Listagens</h2>
<a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a>
<a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a>
<a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a>
<a href="Listarclientes.jsp"><input type="submit" class="btn btn-outline-success" value="Listarclientes"></a>
</body>
</html>