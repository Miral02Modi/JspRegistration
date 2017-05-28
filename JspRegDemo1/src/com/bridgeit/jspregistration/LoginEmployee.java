package com.bridgeit.jspregistration;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpCookie;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		response.setContentType("text/html");

		String email = request.getParameter("Email").trim();
		String password = request.getParameter("password").trim();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String select = "Select * from JspRegistration.UserRegistration where uemailid=? and password=?";
		ResultSet resultSet = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=ninja");
			preparedStatement = connection.prepareStatement(select);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				if (resultSet.getString(2).equalsIgnoreCase(email) && resultSet.getString(3).equals(password)) {
						HttpSession httpSession = request.getSession();
						int uid = resultSet.getInt(1);
 					 	httpSession.setAttribute("uid",uid);
						response.sendRedirect("employeeDetails");
						return;
				}
			}

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("login");
			requestDispatcher.forward(request, response);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
	}

}
