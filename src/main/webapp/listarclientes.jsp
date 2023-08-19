<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="br.com.cafeteriamineira.model.dao.ClienteDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Cliente" %>
 <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de clientes</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="icon" href="img/logo.jpg">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Listagem de clientes</h1>
<a href="cadastrarcliente.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar"></a>
<%
String buscaCliente = "";

if(request.getParameter("buscaCliente") != null){
buscaCliente = request.getParameter("buscaCliente");
}
%>
<table  class="table table-striped">
<thead>
<tr>
<th>Nome</th>
<th>Telefone</th>
<th>Endereço</th>
<th>Cidade</th>
<th>Bairro</th>
<th>Estado</th>
<th>Gestão</th>
</tr>
</thead>
<tbody>
<%
ClienteDao dao = new ClienteDao();
List <Cliente> clientes = dao.listar(buscaCliente);
for (Cliente c: clientes) { %>
<tr>
<td><%= c.getNome() %></td>
<td><%= c.getTelefone() %></td>
<td><%= c.getEndereco() %></td>
<td><%= c.getCidade() %></td>
<td><%= c.getBairro() %></td>
<td><%= c.getEstado() %></td>
<td><a href="IniciarAlterarCliente?id_cliente=<%= c.getId_cliente() %>"><input type="submit" class="btn btn-outline-success" value="Editar"></a>
<a href="ExcluirCliente?id_cliente=<%= c.getId_cliente() %>" onclick="return confirm('Deseja excluir o cliente <%= c.getNome()%>?');"><input type="submit" class="btn btn-outline-danger" value="Excluir"></a></td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>