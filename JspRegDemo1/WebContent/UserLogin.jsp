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
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 20px 40px 40px 20px
		rgba(0, 0, 0, 0.24);
	max-width: 380px;
	padding: 15px 35px 50px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.form-signin-heading, .checkbox {
	margin-bottom: 30px;
}

.checkbox {
	font-weight: normal;
}

/* .form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	@
	include
	box-sizing(border-box);
	&:
	focus
	{
	z-index
	:
	2;
} */
.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin .form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	border-radius: 8px;
}

input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

input[type="password"] {
	margin-bottom: 20px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
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
	<div class="wrapper">
		<form class="form-signin" action="userregi" method="post"
			onsubmit="return validForm()">
			<h2 class="form-signin-heading">User Register</h2>
			<br> Email <input type="text" class="form-control" name="Email"
				id="email" placeholder="Email Address" onblur="validEmailId()" />
			<p id="p1" style="color: red"></p>
			 <br>Password <input type="password" class="form-control"
				onblur="return validPassword()" name="password" id="Password"
				placeholder="Password" />
			<p id="p2" style="color: red"></p>
			<a href="UserLogin.jsp" style="text-decoration: none"><button
					class="btn btn-lg btn-primary btn-block" type="submit">Register</button></a>
		</form>
	</div>
</body>
</html>