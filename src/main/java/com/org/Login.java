package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username= request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hasna","root","root");
			Statement stat = conn.createStatement();
			
			
			ResultSet rs=stat.executeQuery("select * from register_hasna where username='"+username+"' and password='"+password+"'");
				
				while(rs.next()) {
					String user= rs.getString(3);
					String pass = rs.getString(4);
					if(username.equals(user) && password.equals(pass)) {
						response.sendRedirect("home.jsp?msg=done");	
					}
					else {
						response.sendRedirect("home.jsp?msg=wrong");	
					}
				}
				
	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
