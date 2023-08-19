<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="br.com.cafeteriamineira.model.dao.FuncionarioDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Funcionario" %>
  <%@ page import="br.com.cafeteriamineira.model.dao.ClienteDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Cliente" %>
  <%@ page import="br.com.cafeteriamineira.model.dao.ProdutoDao" %>
 <%@ page import="br.com.cafeteriamineira.model.entidade.Produtos" %>
 <%@ page import="java.util.List" %>
 <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Venda</title>
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
<td><a href="cadastrarcliente.jsp"><input type="submit" class="btn btn-outline-success" value=" Cadastrar Cliente"></a></td>
<td><a href="Cadastrarfuncionario.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Funcionário"></a></td>
<td><a href="Cadastrarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Cadastrar Produtos"></a></td>
<td><a href="Logvendas.jsp"><input type="submit" class="btn btn-outline-success" value="Log de Vendas"></a></td>
<td><a href="listarclientes.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Clientes"></a></td>
<td><a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Funcionários"></a></td>
<td><a href="Listarprodutos.jsp"><input type="submit" class="btn btn-outline-success" value="Lista de Produtos"></a></td>
<td><a href="areadousuario.jsp"><input type="submit" class="btn btn-outline-success" value="Área do usuário"></a></td>
</tr>
</table>
<h1>Cadastro de venda</h1>
<form method="post" action="CadastrarVenda" class="form card" id="frm">
<h2 class=" bg-danger text-white card header">Cadastrar Venda</h2>
<label>Nome do cliente:</label>
<select name="cliente" required>
<% ClienteDao dao = new ClienteDao(); 
List<Cliente> listagem = dao.listar("");
for (Cliente c: listagem ) { %>
<option value="<%= c.getId_cliente() %>"><%= c.getNome() %></option>
<% } %>
</select>
<label>Nome do Vendedor</label>
<select name="funcionario" required>
<% FuncionarioDao daop = new FuncionarioDao();
List<Funcionario> listagemf = daop.listar("");
for(Funcionario f: listagemf){ %>
<option value="<%= f.getId_funcionario() %>"><%= f.getNome() %></option>
<% } %>
</select>
<label>Produto</label>
<select name="produtos" required>
<% ProdutoDao daopr = new ProdutoDao();
List<Produtos> listagempr = daopr.listar("");
for(Produtos pr: listagempr){%>
<option value="<%= pr.getCodigo() %>"><%= pr.getCategoria() %></option>
<% } %>
</select>
<label>Descrição</label>
<select name="produtosd" required>
<% ProdutoDao daod = new ProdutoDao();
List<Produtos> listagemd = daod.listar("");
for(Produtos pr: listagemd){%>
<option value="<%= pr.getCodigo() %>"><%= pr.getDescricao() %></option>
<% } %>
</select>
<label>Quantidade vendida</label>
<input type="number" name="venda" required>
<label>Preço:</label>
<input type="number" name="valorunitario" min="0.01" required>
<input type="submit" class="btn btn-outline-success" value="Registrar Venda">
<input type="reset" class="btn btn-outline-danger" value="Limpar">
</form>
</body>
</html>