package br.com.cafeteriamineira.model.entidade;

import java.util.Date;

public class Produtos {
private long codigo;
private Date data_vencimento;
private String descricao;
private String categoria;
private double valor;

public Produtos() {
	this.codigo = 0;
	this.data_vencimento = new Date();
	this.descricao = "";
	this.categoria = "";
	this.valor = 0.0;
}

public Produtos(int codigo, Date data_vencimento, String descricao, String categoria, double valor) {
	this.codigo = codigo;
	this.data_vencimento = data_vencimento;;
	this.descricao = descricao;
	this.categoria = categoria;
	this.valor = valor;
}

public long getCodigo() {
	return codigo;
}

public void setCodigo(long codigo) {
	this.codigo = codigo;
}

public Date getData_vencimento() {
	return data_vencimento;
}

public void setData_vencimento(Date data_vencimento) {
	this.data_vencimento = data_vencimento;
}

public String getDescricao() {
	return descricao;
}

public void setDescricao(String descricao) {
	this.descricao = descricao;
}

public String getCategoria() {
	return categoria;
}

public void setCategoria(String categoria) {
	this.categoria = categoria;
}

public double getValor() {
	return valor;
}

public void setValor(double valor) {
	this.valor = valor;
}
}
