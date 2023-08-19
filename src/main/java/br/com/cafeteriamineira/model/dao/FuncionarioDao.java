package br.com.cafeteriamineira.model.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cafeteriamineira.model.entidade.Funcionario;

public class FuncionarioDao extends Conexao {
 public boolean incluir(Funcionario funcionario) {
	 boolean ok = false;
	 
	 String sql = "insert into funcionario(idvendas, data_nascimento, nome, telefone) values(?, ?, ?, ?) ";
	 
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql); 
		     ps.setLong(1, funcionario.getIdvendas());	 
		     ps.setDate(2, new java.sql.Date(funcionario.getData_nascimento().getTime()));
			 ps.setString(3, funcionario.getNome());
			 ps.setString(4, funcionario.getTelefone());
			
			 ps.execute();
			 
	     }catch(Exception e) {
			 e.printStackTrace();
		 }finally {
			 fecharConexao();
		 }
	 return ok;
 }
 public List<Funcionario> listar(String buscaFuncionario){
	 List<Funcionario> listaf = new ArrayList<Funcionario>();
	 
	 String sql = "select * from funcionario where nome like ? order by nome";
	 
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setString(1, "%" + buscaFuncionario + "%");
		 ResultSet rs = ps.executeQuery();
		 
		 Funcionario f;
		 while(rs.next()) {
			 f = new Funcionario();
			 f.setId_funcionario(rs.getLong("id_funcionario"));
			 f.setIdvendas(rs.getLong("idvendas"));
			 f.setData_nascimento(rs.getDate("data_nascimento"));
			 f.setNome(rs.getString("nome"));
			 f.setTelefone(rs.getString("telefone"));
			 
			 listaf.add(f);
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }finally {
		 fecharConexao();
	 }
	 return listaf;
 }
 public Funcionario buscar(long id_funcionario) {
	 Funcionario f = null;
	 
	 String sql = "select * from funcionario where id_funcionario = ? ";
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setLong(1, id_funcionario);
		 
		 ResultSet rs = ps.executeQuery();
		 if(rs.next()) {
			 f = new Funcionario();
			 f.setId_funcionario(rs.getLong("id_funcionario"));
			 f.setIdvendas(rs.getLong("idvendas"));
			 f.setData_nascimento(rs.getDate("data_nascimento"));
			 f.setNome(rs.getString("nome"));
			 f.setTelefone(rs.getString("telefone"));
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
	 }finally {
		 fecharConexao();
	 }
	 
	 return f;
 }
 
 public boolean alterar(Funcionario f) {
	 boolean ok = true;
	 String sql = "update funcionario set idvendas = ?, data_nascimento = ?, nome = ?, telefone = ? where id_funcionario = ? ";
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setLong(1, f.getIdvendas());
		 ps.setDate(2, new java.sql.Date(f.getData_nascimento().getTime()));
		 ps.setString(3, f.getNome());
		 ps.setString(4, f.getTelefone());
		 ps.setLong(5, f.getId_funcionario());
		 
		 ps.execute();
		 
	 }catch (Exception e) {
		 e.printStackTrace();
	 }finally {
		 fecharConexao();
	 }
	 return ok;
 }
 
public boolean excluir(long id_funcionario) {
	boolean ok = true;
	
	String sql = "delete from funcionario where id_funcionario = ?";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setLong(1, id_funcionario);
		
		ok = ps.execute();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return ok;
}
}
