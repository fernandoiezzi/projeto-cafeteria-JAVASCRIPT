package br.com.cafeteriamineira.model.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
  private Connection conn;
  public Connection criarConexao() {
	  try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeteria", "root" , "");
				  
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	  return this.conn;
  }
  
  public void fecharConexao() {
	  try {
	  this.conn.close();
  }catch(Exception e) {
	  e.printStackTrace();
  }
}
}