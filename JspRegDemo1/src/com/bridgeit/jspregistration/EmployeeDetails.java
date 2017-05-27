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

import org.omg.CORBA.Request;

public class EmployeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession(false);
		Integer uid = (Integer) httpSession.getAttribute("uid");
		System.out.println(uid);
		if (uid != null)
			performTask(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * Connection connection = null; PreparedStatement preparedStatement =
		 * null; ResultSet resultSet = null; HttpSession httpSession =
		 * request.getSession(); Integer uid1 = (Integer)
		 * httpSession.getAttribute("uid"); LinkedList linkedList = new
		 * LinkedList();
		 * 
		 * 
		 * if (uid1 == null) {
		 * 
		 * }
		 * 
		 * 
		 * 
		 * if (httpSession != null) { String select =
		 * "Select * from JspRegistration.EmployeeReg where uid =" + uid1 +
		 * " ORDER BY age asc"; try { Class.forName("com.mysql.jdbc.Driver");
		 * connection = DriverManager.getConnection(
		 * "jdbc:mysql://localhost:3306?user=root&password=ninja");
		 * preparedStatement = connection.prepareStatement(select); resultSet =
		 * preparedStatement.executeQuery(); while (resultSet.next()) {
		 * linkedList.add(new Employee(resultSet.getString(2),
		 * resultSet.getString(1), resultSet.getString(4),
		 * resultSet.getString(3), resultSet.getString(5),
		 * resultSet.getString(6), resultSet.getString(7),
		 * resultSet.getString(8), resultSet.getString(9))); }
		 * request.setAttribute("EmployeeInformation", linkedList);
		 * System.out.println(linkedList.size()); RequestDispatcher
		 * requestDispatcher = request.getRequestDispatcher("Miral.jsp");
		 * requestDispatcher.include(request, response);
		 * 
		 * } catch (ClassNotFoundException e) { e.printStackTrace(); } catch
		 * (SQLException e) { e.printStackTrace(); } return; }
		 * response.sendRedirect("user_reg.jsp");
		 */
		Integer uid = (Integer) request.getAttribute("uid");

		if (uid != null)
			performTask(request, response);
	}

	private void performTask(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		{

			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			HttpSession httpSession = request.getSession();
			Integer uid1 = (Integer) httpSession.getAttribute("uid");
			LinkedList<Employee> linkedList = new LinkedList<Employee>();

			System.out.println("User identity::" + uid1);
			if (httpSession != null) {
				String select = "Select * from JspRegistration.EmployeeReg where uid =" + uid1 + " ORDER BY age asc";
				try {
					Class.forName("com.mysql.jdbc.Driver");
					connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=ninja");
					preparedStatement = connection.prepareStatement(select);
					resultSet = preparedStatement.executeQuery();

					while (resultSet.next()) {
						linkedList.add(
								new Employee(resultSet.getString(2), resultSet.getString(1), resultSet.getString(4),
										resultSet.getString(3), resultSet.getString(5), resultSet.getString(6),
										resultSet.getString(7), resultSet.getString(8), resultSet.getString(9)));
					}
					request.setAttribute("EmployeeInformation", linkedList);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("EmloyeeDetails.jsp");
					requestDispatcher.forward(request, response);

				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					try {
						preparedStatement.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					try {
						connection.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				return;
			}
		}
	}

	/*
	 * private boolean isValidEmployee(HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * 
	 * String email = request.getParameter("Email").trim(); String password =
	 * request.getParameter("password").trim(); System.out.println(email);
	 * System.out.println(password); Connection connection = null;
	 * PreparedStatement preparedStatement = null; String select =
	 * "Select * from JspRegistration.UserRegistration where uemailid=? and password=?"
	 * ; ResultSet resultSet = null; System.out.println(select); try {
	 * 
	 * Class.forName("com.mysql.jdbc.Driver"); connection =
	 * DriverManager.getConnection(
	 * "jdbc:mysql://localhost:3306?user=root&password=ninja");
	 * preparedStatement = connection.prepareStatement(select);
	 * preparedStatement.setString(1, email); preparedStatement.setString(2,
	 * password); resultSet = preparedStatement.executeQuery(); while
	 * (resultSet.next()) { if (resultSet.getString(2).equalsIgnoreCase(email))
	 * { if (resultSet.getString(3).equals(password)) { HttpSession httpSession
	 * = request.getSession(); int uid = resultSet.getInt(1);
	 * System.out.println("Uid Modi::" + uid); httpSession.setAttribute("uid",
	 * uid); // httpSession.setMaxInactiveInterval(12);
	 * System.out.println("Inside the login"); return true; } } }
	 * 
	 * RequestDispatcher requestDispatcher =
	 * request.getRequestDispatcher("user_reg.jsp");
	 * requestDispatcher.forward(request, response);
	 * 
	 * } catch (ClassNotFoundException e) { e.printStackTrace(); } catch
	 * (SQLException e) { e.printStackTrace(); }finally{ if(preparedStatement !=
	 * null){ try { preparedStatement.close(); } catch (SQLException e) {
	 * e.printStackTrace(); } } if(connection != null){ try {
	 * connection.close(); } catch (SQLException e) { e.printStackTrace(); } } }
	 * return false;
	 * 
	 * }
	 */
}
