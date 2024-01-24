package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hasna","root","root");
			Statement stat = conn.createStatement();
			stat.executeUpdate("insert into register_hasna (name,email,password) values('"+name+"','"+email+"','"+password+"')");
			HttpSession session1 = request.getSession();
			session1.setAttribute("email",email);
			response.sendRedirect("home.jsp");
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
