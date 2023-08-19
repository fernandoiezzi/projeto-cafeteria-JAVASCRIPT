package br.com.cafeteriamineira.model.entidade;

public class Usuario {
private long id_section;
private String nome;
private String senha;

public Usuario() {
	this.id_section = 0;
	this.nome = "";
	this.senha = "";
}

public Usuario(int id_section, String login, String senha) {
	this.id_section = id_section;
	this.nome = nome;
	this.senha = senha;
}

public long getId_section() {
	return id_section;
}

public void setId_section(long id_section) {
	this.id_section = id_section;
}

public String getNome() {
	return nome;
}

public void setNome(String nome) {
	this.nome = nome;
}

public String getSenha() {
	return senha;
}

public void setSenha(String senha) {
	this.senha = senha;
}



}
