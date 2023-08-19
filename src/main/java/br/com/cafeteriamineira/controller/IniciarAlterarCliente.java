package br.com.cafeteriamineira.controller;

import java.io.IOException;

import br.com.cafeteriamineira.model.dao.ClienteDao;
import br.com.cafeteriamineira.model.entidade.Cliente;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IniciarAlterarCliente
 */
public class IniciarAlterarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IniciarAlterarCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long id_cliente = 0;
		
		try {
			id_cliente = Long.parseLong(request.getParameter("id_cliente"));
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		ClienteDao dao = new ClienteDao();
		Cliente c = dao.buscar(id_cliente);
		
		request.setAttribute("cliente", c);
		RequestDispatcher rd = request.getRequestDispatcher("Editarcliente.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
