package br.com.cafeteriamineira.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import br.com.cafeteriamineira.model.dao.ProdutoDao;
import br.com.cafeteriamineira.model.entidade.Produtos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AlterarProdutos
 */
public class AlterarProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarProdutos() {
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
		String categoria = request.getParameter("categoria");
		String descricao = request.getParameter("descricao");
		String data_vencimento = request.getParameter("data_vencimento");
		String valor = request.getParameter("valor");
		
		long codigo = 0;
		try {
			codigo = Long.parseLong(request.getParameter("codigo"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Date vencimento = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yy-MM-dd");
		try {
			vencimento = fmt.parse(data_vencimento);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		double val = 0.0;
		try {
			val = Double.parseDouble(valor);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	Produtos p  = new Produtos();
	p.setCodigo(codigo);
	p.setCategoria(categoria);
	p.setDescricao(descricao);
	p.setData_vencimento(vencimento);
	p.setValor(val);
	
	ProdutoDao dao = new ProdutoDao();
	boolean retorno = dao.alterar(p);
	response.sendRedirect("Listarprodutos.jsp");
	}

	
	
}
