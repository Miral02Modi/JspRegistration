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
<style>
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
    color: #fff;
    background-color: white;
} */
.navbar-inverse {
	background-color: #4286f4;
	border: none;
}
/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus,
	.navbar-inverse .navbar-nav>.active>a:hover {
	color: #fff;
	/* background-color: #080808; */
}

.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus,
	.navbar-inverse .navbar-nav>.active>a:hover {
	color: #fff;
	/* background-color: #080808; */
}
/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

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
<script type="text/javascript">
	function validEmailId() {
		var email = document.getElementById('email').value;
		if (email == "") {
			//alert('Please Enter First Name');
			document.getElementById("p1").innerHTML = "*Please enter a email*";
			document.getElementById("email").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p1").innerHTML = "";
			document.getElementById("email").style.borderColor = "green";
			return true;
		}
	}
	function validPassword() {
		var password = document.getElementById('Password').value;
		if (password == "") {
			document.getElementById("p2").innerHTML = "*Please enter a password*";
			document.getElementById("Password").style.borderColor = "red";
			return false;
		} else {
			document.getElementById("p2").innerHTML = "";
			document.getElementById("Password").style.borderColor = "green";
			return true;
		}
	}
	function validForm() {
		var email = validEmailId();
		var password = validPassword();
		if (email == true && password == true) {
			return true;
		}
		return false;
	}
</script>
</head>


<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="EmployeeLogin.jsp"></jsp:include>
	<%-- 	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">

			<!-- <button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-chevron-left"></span> Left
			</button> -->
			<!-- 	<a href="#" class="btn btn-info btn-lg"> <span
				class="glyphicon glyphicon-chevron-left"></span> Left
			</a> -->
			<%
				Integer uid = (Integer) session.getAttribute("uid");
				System.out.println("Miral" + uid);
				if (uid != null) {
			%>
			<!-- <a href="#" style="color: #337ab7"> <span
				class="glyphicon glyphicon-chevron-left" style="top: 13px;">Back</span>
			</a> -->
			<%
				}
			%>
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


	<div class="row">
		<div class="col-lg-3"></div>
		<div class="col-lg-6 col-sm-3">
			<form class="form-signin" action="employeeDetails" method="post"
				onsubmit="return validForm()">
				<h2 class="form-signin-heading">Please login</h2>
				<br> Email <input type="text" class="form-control" name="Email"
					id="email" placeholder="Email Address" onblur="validEmailId()"
					autofocus="" />
				<p id="p1" style="color: red"></p>
				<br>Password <input type="password" class="form-control"
					onblur="return validPassword()" name="password" id="Password"
					placeholder="Password" />
				<p id="p2" style="color: red"></p>
				<br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</form>
		</div>
	</div>
</body> --%>
</html>