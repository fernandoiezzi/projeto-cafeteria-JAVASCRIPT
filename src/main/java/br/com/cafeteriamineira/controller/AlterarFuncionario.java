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
 * Servlet implementation class AlterarFuncionario
 */
public class AlterarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarFuncionario() {
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
		String data_nascimento = request.getParameter("data_nascimento");
		String nome = request.getParameter("nome");;
		String telefone = request.getParameter("telefone");
		
		long id_funcionario = 0;
		
		try {
			id_funcionario = Long.parseLong(request.getParameter("id_funcionario"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Date nascimento = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yy-MM-dd");
		
		try {
			nascimento = fmt.parse(data_nascimento);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		long idvendas = 0;
		try {
			idvendas = Long.parseLong(request.getParameter("idvendas"));
		}catch(Exception e) {
			e.printStackTrace();
		}
     
		Funcionario f = new Funcionario();
		f.setId_funcionario(id_funcionario);
		f.setData_nascimento(nascimento);
		f.setNome(nome);
		f.setIdvendas(idvendas);
		f.setTelefone(telefone);
		
		FuncionarioDao dao = new FuncionarioDao();
		boolean retorno = dao.alterar(f);
		response.sendRedirect("Listarfuncionarios.jsp");
}

}