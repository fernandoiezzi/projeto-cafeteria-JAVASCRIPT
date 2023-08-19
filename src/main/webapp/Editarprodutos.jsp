<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="br.com.cafeteriamineira.model.entidade.Produtos" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de Produtos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/logo.jpg">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
<style>
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
<a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Voltar"></a>
<h1>Alterar Produto</h1>
<% Produtos produtos = (Produtos) request.getAttribute("produtos"); %>
<form method="post" action="AlterarProdutos">
<input type="hidden" name="codigo" value="<%= produtos.getCodigo() %>">
<label>Categoria:</label>
<input type="text" name="categoria" value="<%= produtos.getCategoria() %>">
<label>Descrição:</label>
<input type="text" name="descricao" value="<%= produtos.getDescricao() %>">
<label>Data de vencimento:</label>
<input type="Date" name="data_vencimento" value="<%= produtos.getData_vencimento() %>">
<label>Preço:</label>
<input type="number" name="valor" value="<%= produtos.getValor() %>">
<input type="submit" class="btn btn-outline-success" value="Editar">
<input type="reset" class="btn btn-outline-danger" value="Limpar">
</form>
</body>
</html>