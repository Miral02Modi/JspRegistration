package com.bridgeit.jspregistration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutUser
 */
public class LogoutUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();  
        HttpSession session = request.getSession(); 
        System.out.println("before "+session);
        System.out.println("uid "+request.getAttribute("uid"));
        
        session.invalidate();
        
        System.out.println("after "+session);
        System.out.println("uid "+request.getAttribute("uid"));
        
        session = request.getSession();
        System.out.println("new session "+ session );
        
        //out.print("You are successfully logged out!");  
        //out.close();  
        
        response.sendRedirect("user_reg.jsp?message=You are successfully logged out!");
        //request.getRequestDispatcher("user_reg.jsp").include(request, response);
	}

}
