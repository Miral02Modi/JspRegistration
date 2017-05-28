package com.bridgeit.jspregistration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

/**
 * Servlet implementation class LandingServlet
 */

public class LandingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		Integer uid = (Integer) httpSession.getAttribute("uid");
		System.out.println("Inside landing page::"+uid);
		if (uid == null) {
			//response.sendRedirect("employeeDetails");
			RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeLogin.jsp");
			dispatcher.forward(request, response);
			return;
		}

		/*RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeLogin.jsp");
		dispatcher.forward(request, response);*/

	}

}
