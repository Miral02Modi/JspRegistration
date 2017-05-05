<%@page import="org.omg.CORBA.Request"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<Center>
			<h1 style="color: #777; font-size: 50px; margin-left: 30px;">Employee
				Information</h1>
		</center>
	</div>
	<br>
	<table class="table" border=1>
		<%
			int count = 1;
			ResultSet resultSet = (ResultSet) request.getAttribute("EmployeeInformation");

			while (resultSet.next()) {
				if (count % 2 == 1) {
					out.println("<tr class='success'>");
					for (int i = 1; i != 11; i++)
						out.println("<td>" + resultSet.getString(i) + "</td>");
					out.println("</tr>");
				} else {
					out.println("<tr class='danger'>");
					for (int i = 1; i != 11; i++)
						out.println("<td>" + resultSet.getString(i) + "</td>");
					out.println("</tr>");
				}
				count++;
			}
		%>
	</table>
</body>
</html>