<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">

/* a {
	color: #6da4d4;
	text-decoration: none;
}

.btn-group-sm>.btn, .btn-sm {
	padding: 5px 10px;
	font-size: 12px;
	line-height: 1.5;
	border-radius: 3px;
} */
</style>
 -->
 <link rel="stylesheet" type="text/css" href="css/Header.css">
</head>

<body style="font-size: 17px;">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a style="font-family:verdana; color:white ;  text-shadow:5px 5px 10px blue;"
					 class="navbar-brand" class="navbar-text;" href="#"><em>Bridgelabz</em></a>
				<%
					Integer uid = (Integer) session.getAttribute("uid");
					/* System.out.println("Miral" + uid); */
					if (uid != null) {
				%>
				<%
					}
				%>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					
					<%
						//if (uid != null) {
					%>
					<li><a href="userreg">User Registration</a></li>
					<%
						//}
					%>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%
						//Integer uid = (Integer) session.getAttribute("uid");
					%>
	
	
				</ul>
			</div>
		</div>
		</nav>
</body>
</html>