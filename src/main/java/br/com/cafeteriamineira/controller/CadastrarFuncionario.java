package br.com.cafeteriamineira.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import br.com.cafeteriamineira.model.dao.FuncionarioDao;
import br.com.cafeteriamineira.model.entidade.Funcionario;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarFuncionario
 */
public class CadastrarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarFuncionario() {
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
		String nome = request.getParameter("nome");
		String data_nascimento = request.getParameter("data_nascimento");
		String telefone = request.getParameter("telefone");
		
		Date nascimento = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yy-MM-dd");
		try {
			nascimento = fmt.parse(data_nascimento); 
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Funcionario f = new Funcionario();
		f.setNome(nome);
		f.setData_nascimento(nascimento);
		f.setTelefone(telefone);
		 
	 FuncionarioDao dao = new FuncionarioDao();
	 dao.incluir(f);
	 response.sendRedirect("Listarfuncionarios.jsp");
	}

}
