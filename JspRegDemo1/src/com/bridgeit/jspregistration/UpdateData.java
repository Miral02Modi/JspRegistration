package com.bridgeit.jspregistration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateData
 */
public class UpdateData extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String age = request.getParameter("age");
		String canme = request.getParameter("cname");
		String gender = request.getParameter("gender");
		String lang = request.getParameter("language");
		String special = request.getParameter("special");
		PrintWriter out = response.getWriter();
		System.out.println("update" + phone);

		String update = "UPDATE  JspRegistration.EmployeeReg SET name=? , MobileNum=? , Address=?,cname=?,Age=?,Gender=?,LanguageKnown=?,Specialized=?"
				+ " WHERE Email = ?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "ninja");
			PreparedStatement preparedStatement = con.prepareStatement(update);

			preparedStatement.setString(1, name);
			preparedStatement.setString(9, email);
			preparedStatement.setString(3, address);
			preparedStatement.setString(2, phone);
			preparedStatement.setString(5, age);
			preparedStatement.setString(4, canme);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, lang);
			preparedStatement.setString(8, special);
			preparedStatement.executeUpdate();			 
			response.sendRedirect("employeeDetails");
		} catch (Exception e) {
			System.out.println(e);
		}


	}

}
