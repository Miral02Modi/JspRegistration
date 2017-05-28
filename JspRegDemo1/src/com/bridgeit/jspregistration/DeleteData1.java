package com.bridgeit.jspregistration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteData1
 */
public class DeleteData1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("mail");
		
		
		String delete = "DELETE FROM JspRegistration.EmployeeReg where Email = ? ";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "ninja");
			PreparedStatement preparedStatement = con.prepareStatement(delete);

			preparedStatement.setString(1,email);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		response.sendRedirect("employeeDetails");
	}
}


