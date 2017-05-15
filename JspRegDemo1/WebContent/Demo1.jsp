<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.omg.CORBA.Request"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
ol {
	top: 30%;
}

li:hover {
	box-shadow: inset 0 0 100px 100px rgba(255, 255, 255, 0.1) !important;
	border: 1px solid #373434;
}

ol#menu li a.active {
	color: #333 !important;
}

li:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>

</head>
<body>

	<jsp:include page="Header.jsp"></jsp:include>
	<div data-role="page" id="pageone">
		<div data-role="main" class="ui-content">

			<div class="container">
				<Center>
					<h1 style="color: #777; font-size: 50px; margin-left: 30px;">Employee
						Information</h1>
				</center>
			</div>
			<ol id="some" data-role="listview"
				style="margin-left: 30%; margin-right: 38%;">
				<%
					ResultSet resultSet = (ResultSet) request.getAttribute("EmployeeInformation");

					while (resultSet.next()) {
						out.println("<li style=border-color:black><a href=# data-rel=popup href=#myPopup >"
								+ resultSet.getString(2) + "</a></li>");
					}
				%>
			</ol>
			<div data-role="popup" id="myPopup">
				<p>This is a simple popup.</p>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>