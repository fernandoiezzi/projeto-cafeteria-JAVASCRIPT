<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="br.com.cafeteriamineira.model.dao.FuncionarioDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Funcionario" %>
 <%@ page import="java.util.List" %>
 <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listagem de funcionários</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
String buscaFuncionario = "";

if(request.getParameter("buscaFuncionario") != null){
buscaFuncionario = request.getParameter("buscaFuncionario");
}
%>
</head>
<body>
<jsp:include page="checandosessao.jsp"></jsp:include>
<a href="LogoutServlet"><input type="submit" class="btn btn-outline-success" value="Logout"></a>
<table>
<tr>
<td><a href="Cadastrarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Produtos"></a></td>
<td><a href="Cadastrarvenda.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Vendas"></a></td>
<td><a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a></td>
<td><a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a></td>
<td><a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a></td>
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Listagem de funcionarios</h1>
<a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value=" Cadastrar Funcionario"></a>
<table  class="table table-striped">
<thead>
<tr>
<th>Data de nascimento</th>
<th>Nome</th>
<th>Telefone</th>
<th>Gestão</th>
</tr>
</thead>
<tbody>
<%
FuncionarioDao dao = new FuncionarioDao();
List<Funcionario> funcionarios = dao.listar(buscaFuncionario);
SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yyyy");
for (Funcionario f: funcionarios) {%>
<tr>
<td><%= fmt.format(f.getData_nascimento()) %></td>
<td><%= f.getNome() %></td>
<td><%= f.getTelefone() %></td>
<td><a href="IniciarAlterarFuncionario?id_funcionario=<%= f.getId_funcionario() %>"><input type="submit" class="btn btn-outline-success" value="Editar"></a>
<a href="ExcluirFuncionario?id_funcionario=<%= f.getId_funcionario() %>" onclick="return confirm('Deseja exlcuir o funcionário <%= f.getNome()%> ?')"><input type="submit" class="btn btn-outline-danger" value="Excluir"></a></td>
</tr>
<% } %>
</tbody>
</table>
</body>
</html>