package br.com.cafeteriamineira.controller;

import java.io.IOException;

import br.com.cafeteriamineira.model.dao.FuncionarioDao;
import br.com.cafeteriamineira.model.entidade.Funcionario;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IniciarAlterarFuncionario
 */
public class IniciarAlterarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IniciarAlterarFuncionario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 long id_funcionario = 0;
	 
	 try {
		 id_funcionario = Long.parseLong(request.getParameter("id_funcionario"));
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	 FuncionarioDao dao = new FuncionarioDao();
	 Funcionario f = dao.buscar(id_funcionario);
	 
	 request.setAttribute("func", f);
	 RequestDispatcher rd = request.getRequestDispatcher("editarfunc.jsp");
	 rd.forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
