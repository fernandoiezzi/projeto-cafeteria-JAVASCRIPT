package br.com.cafeteriamineira.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.cafeteriamineira.model.dao.UsuarioDao;
import br.com.cafeteriamineira.model.entidade.Usuario;

/**
 * Servlet implementation class CadastrarLogin
 */
public class CadastrarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarLogin() {
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
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		
		Usuario usr = new Usuario();
		usr.setNome(nome);
		usr.setSenha(senha);
		
		UsuarioDao dao = new UsuarioDao();
		boolean retorno = dao.cadastrar(usr);
		response.sendRedirect("index.jsp");
	}

}
