package br.com.cafeteriamineira.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.cafeteriamineira.model.dao.FuncionarioDao;

/**
 * Servlet implementation class ExcluirFuncionario
 */
public class ExcluirFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExcluirFuncionario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    long id_funcionario = 0;
		
		try {
			id_funcionario = Long.parseLong(request.getParameter("id_funcionario"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		FuncionarioDao dao = new FuncionarioDao();
		boolean retorno = dao.excluir(id_funcionario);
		response.sendRedirect("Listarfuncionarios.jsp");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

}
}