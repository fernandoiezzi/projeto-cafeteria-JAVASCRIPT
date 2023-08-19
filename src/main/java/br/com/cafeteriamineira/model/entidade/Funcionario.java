package br.com.cafeteriamineira.model.entidade;

import java.util.Date;

public class Funcionario {
  private long id_funcionario;
  private long idvendas;
  private Date data_nascimento;
  private String nome;
  private String telefone;
  
  public Funcionario() {
	  this.id_funcionario = 0;
	  this.idvendas = 0;
	  this.data_nascimento = new Date();
	  this.nome = "";
	  this.telefone = "";
	  
  }
  
  public Funcionario(int id_funcionario, int idvendas, Date data_nascimento, String nome, String telefone) {
	  this.id_funcionario = id_funcionario;
	  this.idvendas = idvendas;
	  this.data_nascimento = data_nascimento;
	  this.nome = nome;
	  this.telefone = telefone;
  }

public long getId_funcionario() {
	return id_funcionario;
}

public void setId_funcionario(long id_funcionario) {
	this.id_funcionario = id_funcionario;
}

public long getIdvendas() {
	return idvendas;
}

public void setIdvendas(long idvendas) {
	this.idvendas = idvendas;
}

public Date getData_nascimento() {
	return data_nascimento;
}

public void setData_nascimento(Date data_nascimento) {
	this.data_nascimento = data_nascimento;
}

public String getNome() {
	return nome;
}

public void setNome(String nome) {
	this.nome = nome;
}

public String getTelefone() {
	return telefone;
}

public void setTelefone(String telefone) {
	this.telefone = telefone;
}
  
  
}
