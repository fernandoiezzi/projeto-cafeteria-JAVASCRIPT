package br.com.cafeteriamineira.controller;

import java.io.IOException;

import br.com.cafeteriamineira.model.dao.ProdutoDao;
import br.com.cafeteriamineira.model.entidade.Produtos;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IniciarAlterarProdutos
 */
public class IniciarAlterarProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IniciarAlterarProdutos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long codigo = 0;
		
		try {
			codigo = Long.parseLong(request.getParameter("codigo"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		ProdutoDao dao = new ProdutoDao();
		Produtos p = dao.buscar(codigo);
		
		request.setAttribute("produtos", p);
		RequestDispatcher rd = request.getRequestDispatcher("Editarprodutos.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
