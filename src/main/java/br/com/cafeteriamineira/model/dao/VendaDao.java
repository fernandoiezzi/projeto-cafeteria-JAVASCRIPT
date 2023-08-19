package br.com.cafeteriamineira.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cafeteriamineira.model.entidade.Cliente;
import br.com.cafeteriamineira.model.entidade.Funcionario;
import br.com.cafeteriamineira.model.entidade.Produtos;
import br.com.cafeteriamineira.model.entidade.Venda;

public class VendaDao extends Conexao{
	public boolean incluir (Venda v) {
		boolean ok = false;
		
		String sql = "insert into venda(id_venda, id_clientevenda, id_funcionariovenda, idproduto, quantidade, valorunitario) values(?, ?, ?, ?, ?, ?) ";
		try {
			PreparedStatement ps = criarConexao().prepareStatement(sql);
			ps.setLong(1, v.getId_venda());
			ps.setLong(2, v.getCliente().getId_cliente());
			ps.setLong(3, v.getFuncionario().getId_funcionario());
			ps.setLong(4, v.getProdutos().getCodigo());
			ps.setLong(5, v.getQuantidade());
			ps.setDouble(6, v.getValorunitario());
			 ok = ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			fecharConexao();
		}
		return ok;
	}
	public List<Venda> listar(){
		List<Venda> vendas = new ArrayList<Venda>();
		
		String sql = "select v.*, c.nome as nomecliente, f.nome as nomefuncionario, p.categoria as tipoproduto, p.descricao as proddescricao from venda v inner join cliente c on c.id_cliente = v.id_clientevenda inner join funcionario f on f.id_funcionario = v.id_funcionariovenda inner join produtos p on p.codigo = v.idproduto";
        try {
        	PreparedStatement ps = criarConexao().prepareStatement(sql);
        	ResultSet rs = ps.executeQuery();
        	Venda v = null;
        	Cliente c = null;
        	Funcionario f = null;
        	Produtos p = null;
        	
        	while(rs.next()) {
        		v = new Venda();
        		v.setId_venda(rs.getLong("id_venda"));
        		v.setQuantidade(rs.getLong("quantidade"));
        		v.setValorunitario(rs.getDouble("valorunitario"));
        		
        		c = new Cliente();
        		c.setId_cliente(rs.getLong("id_clientevenda"));
        		c.setNome(rs.getString("nomecliente"));
        		v.setCliente(c);
        		
        		f = new Funcionario();
        		f.setId_funcionario(rs.getLong("id_funcionariovenda"));
        		f.setNome(rs.getString("nomefuncionario"));
        		v.setFuncionario(f);
        		
        		p = new Produtos();
                p.setCodigo(rs.getLong("idproduto"));
        		p.setCategoria(rs.getString("tipoproduto"));
        		p.setDescricao(rs.getString("proddescricao"));
        		v.setProdutos(p);
        		vendas.add(v);
        	}
        }catch(Exception e) {
        	e.printStackTrace();
        }finally {
        	fecharConexao();
        }
        
        return vendas;
	}
}
