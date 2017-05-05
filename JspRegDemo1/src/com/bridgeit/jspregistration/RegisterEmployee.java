package com.bridgeit.jspregistration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterEmployee
 */
public class RegisterEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String stremail = request.getParameter("emailId");
		String strName= request.getParameter("name");
		String strAddress = request.getParameter("address");
		String strPhone = request.getParameter("phone").trim();
		String strCompnyName = request.getParameter("cname");
		String strAge = request.getParameter("age").trim();
		String strGender =  request.getParameter("gender");
		String strlang[] = request.getParameterValues("language");
		String password = request.getParameter("password");
		String language="";
		PrintWriter out = response.getWriter();
		
		if(strName == null
	               || (strName = htmlFilter(strName.trim())).length() == 0) {
	            out.println("<p>Name: MISSING</p>");
	         } else {
	            out.println("<p>Name: " + strName + "</p>");
	         }
		
		for(String i : strlang)
			language = language + i+",";
		
		HttpSession httpSession = request.getSession();
		int uid = (Integer) httpSession.getAttribute("uid");
		System.out.println(strlang.length);
		System.out.println(stremail+strAddress+strPhone+strCompnyName+strAge+strGender);
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String insertQuery = "insert into JspRegistration.EmployeeReg values(?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306?user=root&password=ninja");
			preparedStatement = connection.prepareStatement(insertQuery);
			preparedStatement.setString(1, stremail);
			preparedStatement.setString(2, strName);
			preparedStatement.setString(3, strPhone);
			preparedStatement.setString(4, strAddress);
			preparedStatement.setString(5,strCompnyName );
			preparedStatement.setString(6, strAge);
			preparedStatement.setString(7,strGender);
			preparedStatement.setString(8,language);
			preparedStatement.setString(9,"Java");
			preparedStatement.setString(10,password);
			preparedStatement.setInt(11, uid);
			preparedStatement.executeUpdate();
			
		} catch (ClassNotFoundException e) {	
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	private static String htmlFilter(String message) {
	      if (message == null) return null;
	      int len = message.length();
	      StringBuffer result = new StringBuffer(len + 20);
	      char aChar;
	 
	      for (int i = 0; i < len; ++i) {
	         aChar = message.charAt(i);
	         switch (aChar) {
	             case '<': result.append("&lt;"); break;
	             case '>': result.append("&gt;"); break;
	             case '&': result.append("&amp;"); break;
	             case '"': result.append("&quot;"); break;
	             default: result.append(aChar);
	         }
	      }
	      return (result.toString());
	   }
}
