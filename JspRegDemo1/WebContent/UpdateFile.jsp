<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
button {
	text-shadow: 0 1px 0 #38c;
	margin-bottom: 3% !important;
	margin-top: 3%;
	color: #38c !imporatant;
	background-color: whitesmoke;
}
</style>
</head>
<body>
	<div class="wrapper">
		<form class="form-signin" name="reg" method="post">
			<button type="button" class="btn" id="name"
				style="margin-top: 3%; width: 42%; margin-left: 30%;">Employee
				Name</button>
			<button type="button" class="btn" id="phone" 
				style="width: 42%; margin-left: 30%;">Mobile Number</button>
			<button type="button" class="btn" id="Address"
				style="width: 42%; margin-left: 30%;">Address</button>
			<button type="button" class="btn" id="cname"
				style="width: 42%; margin-left: 30%;">Company Name</button>
		</form>
	</div>
	
	<%-- <%out.println(request.getParameter(arg0)); %> --%>
	
</body>
</html>