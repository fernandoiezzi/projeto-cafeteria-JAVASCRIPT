package br.com.cafeteriamineira.model.entidade;

public class Venda {
 private long id_venda;
 private long id_clientevenda;
 private long id_funcionariovenda;
 private long idproduto;
 private long quantidade;
 private double valorunitario;
 
 private Cliente cliente;
 private Funcionario funcionario;
 private Produtos produtos;
 
 public Produtos getProdutos() {
	return produtos;
}

public void setProdutos(Produtos produtos) {
	this.produtos = produtos;
}

public Cliente getCliente() {
	return cliente;
}

public void setCliente(Cliente cliente) {
	this.cliente = cliente;
}

public Funcionario getFuncionario() {
	return funcionario;
}

public void setFuncionario(Funcionario funcionario) {
	this.funcionario = funcionario;
}

public Venda() {
	 this.id_venda = 0;
	 this.id_clientevenda = 0;
	 this.id_funcionariovenda = 0;
	 this.idproduto = 0;
	 this.quantidade = 0;
	 this.valorunitario = 0.0;
 }

 public Venda(int id_venda, int id_clientevenda, int id_funcionariovenda, int idprotudo, int quantidade, int valorunitario, long idproduto) {
	 this.id_venda = id_venda;
	 this.id_clientevenda = id_clientevenda;
	 this.id_funcionariovenda = id_funcionariovenda;
	 this.idproduto = idproduto;
	 this.quantidade = quantidade;
	 this.valorunitario = valorunitario;
 }
public long getId_venda() {
	return id_venda;
}

public void setId_venda(long id_venda) {
	this.id_venda = id_venda;
}

public long getId_clientevenda() {
	return id_clientevenda;
}

public void setId_clientevenda(long id_clientevenda) {
	this.id_clientevenda = id_clientevenda;
}

public long getId_funcionariovenda() {
	return id_funcionariovenda;
}

public void setId_funcionariovenda(long id_funcionariovenda) {
	this.id_funcionariovenda = id_funcionariovenda;
}

public long getIdproduto() {
	return idproduto;
}

public void setIdproduto(long idproduto) {
	this.idproduto = idproduto;
}

public long getQuantidade() {
	return quantidade;
}

public void setQuantidade(long quantidade) {
	this.quantidade = quantidade;
}

public double getValorunitario() {
	return valorunitario;
}

public void setValorunitario(double valorunitario) {
	this.valorunitario = valorunitario;
}
}
