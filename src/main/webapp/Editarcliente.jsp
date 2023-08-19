<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cafeteriamineira.model.entidade.Cliente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição clientes</title>
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
<a href="listarclientes.jsp"><input type="submit" class="btn btn-outline-success" value=" Voltar"></a>

<% 
Cliente cliente = (Cliente) request.getAttribute("cliente"); %>
 <form method="post" action="AlterarCliente">
 <h1>Edição de clientes</h1>
 <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>" required>
 <label>Nome:</label>
 <input type="text" name="nome" value="<%= cliente.getNome() %>" required>
 <label>Telefone:</label>
 <input type="text" name="telefone" value="<%= cliente.getTelefone() %>" required>
 <label>Endereço:</label>
 <input type="text" name="endereco" value="<%= cliente.getEndereco() %>" required>
 <label>Bairro:</label>
 <input type="text" name="bairro" value="<%= cliente.getBairro() %>" required>
 <label>Cidade:</label>
 <input type="text" name="cidade" value="<%= cliente.getCidade() %>" required>
 <label>Estado:</label>
 <input type="text" name="estado" value="<%= cliente.getEstado() %>" required>
 <input type="submit" class="btn btn-outline-success" value="Editar">
 </form>
</body>
</html>