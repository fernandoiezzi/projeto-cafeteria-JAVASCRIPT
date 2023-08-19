<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="br.com.cafeteriamineira.model.dao.VendaDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Venda" %>
 <%@  page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log de Vendas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon" href="img/logo.jpg">
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
<jsp:include page="checandosessao.jsp"></jsp:include>
<a href="LogoutServlet"><input type="submit" class="btn btn-outline-success" value="Logout"></a>
<table>
<tr>
<td><a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Funcionario"></a></td>
<td><a href="Cadastrarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Produtos"></a></td>
<td><a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Vendas"></a></td>
<td><a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a></td>
<td><a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a></td>
<td><a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a></td>
<td><a href="listarclientes.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Clientes"></a></td>
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Log de vendas</h1>
<a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value=" Cadastrar Venda"></a>
<form class="form card">
<table>
<thead>
<tr>
<th>Cliente</th>
<th>Categoria</th>
<th>Descrição</th>
<th>Quantidade</th>
<th>Valor Vendido</th>
<th>Vendedor</th>
</tr>
</thead>
<tbody>
<% 
VendaDao dao = new VendaDao();
List<Venda> vendas = dao.listar();
for(Venda v: vendas){ %>
<tr>
<td><%= v.getCliente().getNome() %></td>
<td><%= v.getProdutos().getCategoria() %></td>
<td><%= v.getProdutos().getDescricao() %></td>
<td><%= v.getQuantidade() %></td>
<td><%= v.getValorunitario() %></td>
<td><%= v.getFuncionario().getNome() %></td>
</tr>
<% } %>
</tbody>
</table>
</form>
</body>
</html>