package com.bridgeit.jspregistration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AgeWisedisplayEmployee
 */
public class EmployeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("insipde get  emp detail ");
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside post Employee Details ");

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		HttpSession httpSession = request.getSession();
		Integer uid1 = (Integer) httpSession.getAttribute("uid");
		LinkedList linkedList = new LinkedList();

		/*
		 * if (uid1 == null) {
		 * 
		 * }
		 */
		System.out.println("yjtdwjehgdja");
		System.out.println("uid" + uid1);

		if (httpSession != null) {
			String select = "Select * from JspRegistration.EmployeeReg where uid =" + uid1 + " ORDER BY age asc";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=ninja");
				preparedStatement = connection.prepareStatement(select);
				resultSet = preparedStatement.executeQuery();
				while (resultSet.next()) {
					linkedList.add(new Employee(resultSet.getString(2), resultSet.getString(1), resultSet.getString(4),
							resultSet.getString(3), resultSet.getString(5), resultSet.getString(6),
							resultSet.getString(7), resultSet.getString(8), resultSet.getString(9)));
				}
				request.setAttribute("EmployeeInformation", linkedList);
				System.out.println(linkedList.size());
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("Miral.jsp");
				requestDispatcher.forward(request, response);

			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return;
		}
		response.sendRedirect("user_reg.jsp");
	}
}
