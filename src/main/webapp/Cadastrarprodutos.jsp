<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produtos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="icon" href="img/logo.jpg">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style >
#frm{
width:500px;
margin:auto;
margin-top:100px;
}
h1{
width:500px;
margin:auto;
margin-top:100px;
}
</style>
</head>
<body>
<jsp:include page="checandosessao.jsp"></jsp:include>
<a href="LogoutServlet"><input type="submit" class="btn btn-outline-success" value="Logout"></a>
<table>
<tr>
<td><a href="cadastrarcliente.jsp"><input type="submit" class="btn btn-outline-success" value=" Cadastrar Cliente"></a></td>
<td><a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Funcionário"></a></td>
<td><a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Vendas"></a></td>
<td><a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a></td>
<td><a href="listarclientes.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Clientes"></a></td>
<td><a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a></td>
<td><a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a></td>
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Cadastro de Produtos</h1>
<form method="post" action="CadastrarProduto" class="form card" id="frm">
<h2 class=" bg-danger text-white card header">Cadastrar Produto</h2>
<label>Categoria:</label>
<input type="text" name="categoria" required>
<label>Descrição:</label>
<input type="text" name="descricao" required>
<label>Data de vencimento: </label>
<input type="date" name="data_vencimento"required>
<label>Preço:</label>
<input type="number" name="valor" min="0.01" required>
<input type="submit" class="btn btn-outline-success" value="Cadastrar">
<input type="reset" class="btn btn-outline-danger" value="Limpar">
</form>
</body>
</html>