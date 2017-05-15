<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* .btn {
	display: inline-block;
	padding: 6px 12px;
	margin-top: 10px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;	
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
} */
a {
	color: #6da4d4;
	text-decoration: none;
}

.btn-group-sm>.btn, .btn-sm {
	padding: 5px 10px;
	font-size: 12px;
	line-height: 1.5;
	border-radius: 3px;
}
</style>
</head>

<body style="font-size: 17px;">
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">

			<!-- <button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-chevron-left"></span> Left
			</button> -->
			<a href="#" class="btn btn-info btn-lg"> <span
				class="glyphicon glyphicon-chevron-left"></span> Left
			</a>
			<%
					Integer uid = (Integer) session.getAttribute("uid");
					System.out.println("Miral" + uid);
					if (uid != null) {
				%>
			<!-- <a href="#" style="color: #337ab7"> <span
				class="glyphicon glyphicon-chevron-left" style="top: 13px;">Back</span>
			</a> -->
			<%} %>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- <a class="navbar-brand" href="#">Logo</a> -->
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<%
					if (uid != null) {
				%>
				<li><a href="registerEmployeeController">Employee
						Registration</a></li>
				<%
					}
				%>
				<%
					if (uid == null) {
				%>
				<li><a href="userreg">User Registration</a></li>
				<%
					}
				%>
				<li><a href="#">Contact</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
					//Integer uid = (Integer) session.getAttribute("uid");

					if (uid != null) {
				%>
				<li><a href="LogoutUser"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				<%
					}
				%>

			</ul>
		</div>
	</div>
	</nav>
</body>
</html>