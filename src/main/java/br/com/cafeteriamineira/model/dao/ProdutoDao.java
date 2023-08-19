package br.com.cafeteriamineira.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cafeteriamineira.model.entidade.Produtos;

public class ProdutoDao extends Conexao {
 public boolean incluir(Produtos produtos) {
	 boolean ok = false;
	 
	 String sql = "insert into produtos(codigo, data_vencimento, descricao, categoria, valor) values (?, ?, ?, ?, ?)";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setLong(1, produtos.getCodigo());
		ps.setDate(2,new java.sql.Date(produtos.getData_vencimento().getTime()));
		ps.setString(3, produtos.getDescricao());
		ps.setString(4, produtos.getCategoria());
		ps.setDouble(5, produtos.getValor());
		
		ps.execute();
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		fecharConexao();
	}
	return ok;
 }
 
 public List<Produtos> listar(String buscaprodutos) {
	List<Produtos> produtos = new ArrayList<Produtos>();
	
	String sql = "select * from produtos where categoria like ? order by categoria ";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setString(1, "%" + buscaprodutos + "%");
		ResultSet rs = ps.executeQuery();
		
		Produtos p;
		while(rs.next()) {
			p = new Produtos();
			p.setCodigo(rs.getLong("codigo"));
			p.setData_vencimento(rs.getDate("data_vencimento"));
			p.setCategoria(rs.getString("categoria"));
			p.setDescricao(rs.getString("descricao"));
			p.setValor(rs.getDouble("valor"));
			
			produtos.add(p);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		fecharConexao();
	}
	return produtos;
 }
 
 public Produtos buscar(long codigo) {
	 Produtos p = null;
	 
	 String sql ="select * from produtos where codigo = ? ";
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setLong(1, codigo);
		 
		 ResultSet rs = ps.executeQuery();
		 if(rs.next()) {
			 p = new Produtos();
			 p.setCodigo(rs.getLong("codigo"));
			 p.setCategoria(rs.getString("categoria"));
			 p.setDescricao(rs.getString("descricao"));
			 p.setData_vencimento(rs.getDate("data_vencimento"));
			 p.setValor(rs.getDouble("valor"));		 
		 }
	 }catch(Exception e) {
		 e.printStackTrace();
	 }finally{
		 fecharConexao();
	 }
	 return p;
 }
 public boolean alterar(Produtos p) {
	 boolean ok = true;
	 String sql = "update produtos set data_vencimento = ?, descricao = ?, categoria = ?, valor = ? where codigo = ?";
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setDate(1, new java.sql.Date(p.getData_vencimento().getTime()));
		 ps.setString(2, p.getDescricao());
		 ps.setString(3, p.getCategoria());
		 ps.setDouble(4, p.getValor());
		 ps.setLong(5, p.getCodigo());
		 
		 ps.execute();
	 }catch(Exception e) {
		 e.printStackTrace();
	 }finally {
		 fecharConexao();
	 }
	 return ok;
 }
 public boolean excluir(long codigo) {
	 boolean ok = true;
	 String sql = "delete from produtos where codigo = ?";
	 try {
		 PreparedStatement ps = criarConexao().prepareStatement(sql);
		 ps.setLong(1, codigo);
		 
		 ok=ps.execute();
	 }catch(Exception e) {
		 e.printStackTrace();
	 }finally {
		 fecharConexao();
	 }
	 return ok;
 }
}