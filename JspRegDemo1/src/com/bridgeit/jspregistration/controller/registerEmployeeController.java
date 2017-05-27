package com.bridgeit.jspregistration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerEmployeeController
 */
public class registerEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeRegistration.jsp");
		dispatcher.forward(request, response);*/
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside the Controler");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/EmployeeRegistration.jsp");
		dispatcher.forward(request, response);
	}
}
