package br.com.cafeteriamineira.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.cafeteriamineira.model.entidade.Usuario;

public class UsuarioDao extends Conexao{
	public Usuario logar(String login, String senha){
		Usuario usr = null;
		
		String sql = "select * from usuario where nome = ? and senha = ? ";
		try {
			PreparedStatement ps = criarConexao().prepareStatement(sql);
			ps.setString(1, login);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				usr = new Usuario();
				usr.setId_section(rs.getLong("id_section"));
				usr.setNome(rs.getString("nome"));
				usr.setSenha(rs.getString("senha"));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			fecharConexao();
		}
		return usr;
	}
	
	public boolean cadastrar(Usuario usr) {
		boolean ok = false;
		
		String sql = "insert into usuario (id_section, nome, senha) values(?, ?, ?)";
		try {
			PreparedStatement ps = criarConexao().prepareStatement(sql);
			ps.setLong(1, usr.getId_section());
			ps.setString(2, usr.getNome());
			ps.setString(3,  usr.getSenha());
			
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			fecharConexao();
		}
		return ok;
	}

}
