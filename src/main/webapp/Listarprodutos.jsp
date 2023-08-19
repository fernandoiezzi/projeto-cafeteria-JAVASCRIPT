<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="br.com.cafeteriamineira.model.dao.ProdutoDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Produtos" %>
 <%@ page import="java.util.List" %>
 <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de Produtos</title>
<meta charset="ISO-8859-1">
<title>Listagem de funcionários</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
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

<%
String buscaprodutos = "";

if(request.getParameter("buscaprodutos") != null){
buscaprodutos = request.getParameter("buscaprodutos");
}
%>
</head>
<body>
<jsp:include page="checandosessao.jsp"></jsp:include>
<a href="LogoutServlet"><input type="submit" class="btn btn-outline-success" value="Logout"></a>
<table>
<tr>
<td><a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Funcionario"></a></td>
<td><a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Vendas"></a></td>
<td><a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a></td>
<td><a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a></td>
<td><a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a></td>
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Listagem de Produtos</h1>
<a href="Cadastrarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value=" Cadastrar Produto"></a>
<table class="table table-striped">
<thead>
<tr>
<th>Categoria</th>
<th>Descrição</th>
<th>Data de vencimento</th>
<th>Preço</th>
<th>Manipulação</th>
</tr>
</thead>
<tbody>
<%
ProdutoDao dao = new ProdutoDao();
List<Produtos> produtos = dao.listar(buscaprodutos);
SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yy");
for(Produtos p: produtos) { %>
<tr>
<td><%= p.getCategoria() %></td>
<td><%= p.getDescricao() %></td>
<td><%= fmt.format(p.getData_vencimento()) %></td>
<td><%= p.getValor() %></td>
<td><a href="IniciarAlterarProdutos?codigo=<%= p.getCodigo() %>"><input type="submit" class="btn btn-outline-success" value="Editar"></a>
<a href="ExcluirProdutos?codigo=<%= p.getCodigo() %>" onclick="return confirm('Deseja excluir o produto <%= p.getCategoria() %> <%= p.getDescricao() %> ?')"><input type="submit" class="btn btn-outline-danger" value="Excluir"></a></td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>