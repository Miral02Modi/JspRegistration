package com.bridgeit.jspregistration;

import java.awt.SecondaryLoop;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserRegistration
 */
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		/* String uid = request.ge */
		String email = request.getParameter("Email");
		System.out.println(email);
		String password = request.getParameter("password");

		String insert = "INSERT INTO JspRegistration.UserRegistration(uemailid,password) values(?, ?)";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=ninja");
			statement = connection.prepareStatement(insert);
			
			statement.setString(1, email);
			statement.setString(2, password);
			int i = statement.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("LandingServlet");
	}
}
