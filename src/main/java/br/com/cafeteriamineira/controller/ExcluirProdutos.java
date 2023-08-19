package br.com.cafeteriamineira.controller;

import java.io.IOException;

import br.com.cafeteriamineira.model.dao.ProdutoDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExcluirProdutos
 */
public class ExcluirProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExcluirProdutos() {
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
		boolean retorno = dao.excluir(codigo);
		response.sendRedirect("Listarprodutos.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
