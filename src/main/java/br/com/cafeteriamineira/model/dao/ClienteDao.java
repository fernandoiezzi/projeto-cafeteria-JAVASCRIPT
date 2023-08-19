package br.com.cafeteriamineira.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cafeteriamineira.model.entidade.Cliente;

public class ClienteDao extends Conexao {

	public boolean incluir (Cliente cliente) {
		boolean ok = false;
		String sql = "insert into cliente(nome, telefone, endereco, cidade, bairro, estado) " + " values(?, ?, ? , ?, ?, ?)";
		
		try {
			PreparedStatement ps = criarConexao().prepareStatement(sql);
			ps.setString(1, cliente.getNome());
			ps.setString(2, cliente.getTelefone());
			ps.setString(3, cliente.getEndereco());
			ps.setString(4, cliente.getCidade());
			ps.setString(5, cliente.getBairro());
			ps.setString(6, cliente.getEstado());
			
			ok = ps.execute();
			}catch (Exception e) {
				e.printStackTrace();
				ok = false;
			} finally {
				fecharConexao();
			}
		return ok;
	}


public List<Cliente> listar(String buscaCliente){
	List<Cliente> listac = new ArrayList<Cliente>();
	
	String sql = "select * from cliente where nome like ? order by nome";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setString(1, "%" + buscaCliente + "%");
		ResultSet rs = ps.executeQuery();
		
		Cliente c;
		while(rs.next()) {
			c = new Cliente();
			c.setId_cliente(rs.getLong("id_cliente"));
			c.setNome(rs.getString("nome"));
			c.setTelefone(rs.getString("telefone"));
			c.setEndereco(rs.getString("endereco"));
			c.setCidade(rs.getString("cidade"));
			c.setBairro(rs.getString("bairro"));
			c.setEstado(rs.getString("estado"));
			
			listac.add(c);
		}
	}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			fecharConexao();
		}
		return listac;
	
}


public Cliente buscar(long id_cliente) {
	Cliente c = null;
	
	String sql = "select * from cliente where id_cliente = ? ";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setLong(1, id_cliente);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			c = new Cliente();
			c.setId_cliente(rs.getLong("id_cliente"));
			c.setNome(rs.getString("nome"));
			c.setTelefone(rs.getString("telefone"));
			c.setEndereco(rs.getString("endereco"));
			c.setCidade(rs.getString("cidade"));
			c.setBairro(rs.getString("bairro"));
			c.setEstado(rs.getString("estado"));
	}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		fecharConexao();
	}
	return c;	
}


public boolean alterar(Cliente c) {
	// TODO Auto-generated method stub
	boolean ok = true;
	String sql = "update cliente set nome = ?, telefone = ?, endereco = ?, cidade = ?, bairro = ?, estado = ? where id_cliente = ?"; 
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setString(1, c.getNome());
		ps.setString(2, c.getTelefone());
		ps.setString(3, c.getEndereco());
		ps.setString(4, c.getCidade());
		ps.setString(5, c.getBairro());
		ps.setString(6, c.getEstado());
		ps.setLong(7, c.getId_cliente());
		
		ps.execute();
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		fecharConexao();
	}
	return ok;
}
public boolean excluir(long id_cliente) {
	boolean ok = true;
	
	String sql = "delete from cliente " + "where id_cliente = ?";
	try {
		PreparedStatement ps = criarConexao().prepareStatement(sql);
		ps.setLong(1, id_cliente);
		
		ok = ps.execute();
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		fecharConexao();
	}
	return ok;
}
}

