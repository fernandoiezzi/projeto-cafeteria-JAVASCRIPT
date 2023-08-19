package br.com.cafeteriamineira.controller;

import java.io.IOException;

import br.com.cafeteriamineira.model.dao.VendaDao;
import br.com.cafeteriamineira.model.entidade.Cliente;
import br.com.cafeteriamineira.model.entidade.Funcionario;
import br.com.cafeteriamineira.model.entidade.Produtos;
import br.com.cafeteriamineira.model.entidade.Venda;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarVenda
 */
public class CadastrarVenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarVenda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id_cliente = request.getParameter("cliente");
		String id_funcionario = request.getParameter("funcionario");
		String idproduto = request.getParameter("produtos");
		String descricao = request.getParameter("produtosd");
		String valorunitario = request.getParameter("valorunitario");
		String quantidade = request.getParameter("venda");
		
		
		double valoruni = 0.0;
		try {
			valoruni = Double.parseDouble(valorunitario);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		long quant = 0;
		try {
			quant = Long.parseLong(quantidade);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Cliente c = new Cliente();
		
		try {
			c.setId_cliente(Long.parseLong(id_cliente)); 
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Funcionario f = new Funcionario();
		try {
			f.setId_funcionario(Long.parseLong(id_funcionario));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Produtos p = new Produtos();
		try {
			p.setCodigo(Long.parseLong(idproduto));
			p.setDescricao(descricao);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Venda v = new Venda();
		v.setCliente(c);
		v.setFuncionario(f);
		v.setProdutos(p);
		v.setQuantidade(quant);
		v.setValorunitario(valoruni);
		
		VendaDao dao = new VendaDao();
		dao.incluir(v);
		response.sendRedirect("Logvendas.jsp");
		
	}

}
