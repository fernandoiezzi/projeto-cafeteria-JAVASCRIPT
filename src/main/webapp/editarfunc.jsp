<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.cafeteriamineira.model.entidade.Funcionario" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de Funcionários</title>
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
<a href="Listarfuncionarios.jsp"><input type="submit" class="btn btn-outline-success" value="Voltar"></a>
<h1>Editar Funcionário</h1>
<% Funcionario func = (Funcionario) request.getAttribute("func"); %>
<form method="post" action="AlterarFuncionario">
<input type="hidden" name="id_funcionario" value="<%= func.getId_funcionario() %>">
<label>Data de nascimento: </label>
<input type="Date" name="data_nascimento" value="<%= func.getData_nascimento() %>">
<label>Nome: </label>
<input type="text" name="nome" value="<%= func.getNome()%>">
<label>Telefone: </label>
<input type="text" name="telefone" value="<%= func.getTelefone()%>">
<input type="submit" class="btn btn-outline-success" value="Editar">
<input type="reset" class="btn btn-outline-danger" value="Restaurar">
</form>
</body>
</html>