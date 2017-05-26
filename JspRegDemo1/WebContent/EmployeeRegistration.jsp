<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	
<link rel="stylesheet" type="text/css" href="css/EmployeeRegistration.css">	
<!-- <style>
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 380px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 40px 40px 0
		rgba(0, 0, 0, 0.24);
}

.form-signin-heading, .checkbox {
	margin-bottom: 30px;
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
</style> -->
<script src="js/EmployeeRegister.js" type="text/javascript">
/* 	function validForm() {
		var name = validName();
		var email = validEmail();
		var password = validPassword();
		var phone = validPhone();
		var address = validAddress();
		var comapnyName = validCompanyName();
		var age = validAge();
		if (name == true && email == true && password == true && phone == true
				&& address == true && comapnyName == true && age == true) {
			return true;
		}
		return false;
	}

	function validName() {
		var name = document.getElementById("Name").value;

		if (name == "") {
			document.getElementById("Name").style.borderColor = "red";
			document.getElementById("p1").innerHTML = "*Please enter a Name*";
			return false;
		} else {
			document.getElementById("Name").style.borderColor = rgba(0, 0, 0,
					.25);
			document.getElementById("p1").innerHTML = "";
			return true;
		}

	}

	function validEmail() {
		var email = document.getElementById("email").value;

		if (email == "") {
			document.getElementById("email").style.borderColor = "red";
			document.getElementById("p2").innerHTML = "*Please enter a email*";
			return false;
		} else {
			document.getElementById("email").style.borderColor = rgba(0, 0, 0,
					.25);
			document.getElementById("p2").innerHTML = "";
			return true;
		}
	}

	function validPassword() {
		var password = document.getElementById("Password").value;

		if (password == "") {
			document.getElementById("Password").style.borderColor = "red";
			document.getElementById("p3").innerHTML = "*Please enter a Password*";
			return false;
		} else {
			document.getElementById("Password").style.borderColor = rgba(0, 0,
					0, .25);
			document.getElementById("p3").innerHTML = "";
			return true;
		}
	}

	function validPhone() {

		var phone = document.getElementById("Phone").value;
		if (phone == "") {
			document.getElementById("Phone").style.borderColor = "red";
			document.getElementById("p4").innerHTML = "*Please enter a Mobile Number*";
			return false;
		} else {
			document.getElementById("Phone").style.borderColor = rgba(0, 0, 0,
					.25);
			document.getElementById("p4").innerHTML = "";
			return true;
		}
	}

	function validAddress() {

		var address = document.getElementById("Address").value;

		if (address == "") {
			document.getElementById("Address").style.borderColor = "red";
			document.getElementById("p5").innerHTML = "*Please enter a Address*";
			return false;
		} else {
			document.getElementById("Address").style.borderColor = rgba(0, 0,
					0, .25);
			document.getElementById("p5").innerHTML = "";
			return true;
		}
	}

	function validCompanyName() {
		var cname = document.getElementById("Cname").value;
		if (cname == "") {
			document.getElementById("Cname").style.borderColor = "red";
			document.getElementById("p6").innerHTML = "*Please enter a Company Name*";
			return false;
		} else {
			document.getElementById("Cname").style.borderColor = rgba(0, 0, 0,
					.25);
			document.getElementById("p6").innerHTML = "";
			return true;
		}
	}

	function validAge() {
		var age = document.getElementById("Age").value;
		console.log(age);
		if (age == "") {
			document.getElementById("Age").style.borderColor = "red";
			document.getElementById("p7").innerHTML = "*Please enter a Age*";
			return false;
		} else {
			document.getElementById("Age").style.borderColor = rgba(0, 0, 0,
					.25);
			document.getElementById("p7").innerHTML = "";
			return true;
		}
	}

	function make_blank() {
		document.getElementById("Name").value = "";
	} */
</script>
</head>
<title>Insert title here</title>

<body>
	<!--  -->
	<%-- <jsp:include page="Header.jsp"></jsp:include> --%>
	<div class="container">
		<!-- <div class="navBar" id="fixed"> -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			
			<div class="collapse navbar-collapse" id="myNavbar">
				

				<ul class="nav navbar-nav">
				<li><a
					style="font-family: verdana; color: white; text-shadow: 5px 5px 10px blue;"
					class="navbar-brand" class="navbar-text;" href="#"><em>Bridgelabz</em></a></li>
					<li><a href="EmployeeDetailController"
						style="float: left;">Employee Detail</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<div class="wrapper">
		<form class="form-signin" name="reg" method="post"
			onsubmit="return validForm()">
			<h2 class="form-signin-heading">Please Register</h2>
			Name <input type="text" class="form-control" name="name"
				placeholder="Name" id="Name" autofocus=""
				onblur="return validName()" onclick="make_blank()" />

			<p id="p1" style="color: red"></p>
			<br> Email <input type="text" class="form-control"
				name="emailId" placeholder="Email Address" id="email"
				onblur="return validEmail()" />
			<p id="p2" style="color: red"></p>

			<br> Passoword <input type="password" class="form-control"
				name="password" placeholder="password" id="Password"
				onblur="return validPassword()" />
			<p id="p3" style="color: red"></p>


			<br>Mobile Number <input type="TEXT" class="form-control"
				name="phone" placeholder="Mobile Number" id="Phone"
				onblur="return validPhone()" />
			<p id="p4" style="color: red"></p>

			<br>Address
			<textarea rows="4" cols="37" name="address"
				onblur="return validAddress()" class="form-control"
				placeholder="Address" id="Address" /></textarea>
			<p id="p5" style="color: red"></p>


			<br> Company Name <input type="text" class="form-control"
				onblur="return validCompanyName()" placeholder="Company Name"
				name="cname" id="Cname">
			<p id="p6" style="color: red"></p>

			<br> Age <input type="number" class="form-control" max="100"
				min="1" id="Age" placeholder="Age" name="age"
				onblur="return validAge()" />
			<p id="p7" style="color: red"></p>



			<br> <input type="radio" name="gender" value="Male " checked>Male
			<input type="radio" name="gender" value="Female">Female <input
				type="radio" name="gender" value="Other">Other<br> <br>
			<label for="sel2"></label>Language you known <select multiple
				class="form-control" name="language" id="language">
				<option value="java">Java</option>
				<option value="ASP.net">ASP.net</option>
				<option value="Python">Python</option>
				<option value="SQL">SQL</option>
				<option value="C">C</option>
				<option value="C++">C++</option>
				<option value="C#">C#</option>
				<option value="Android">Android</option>
				<option value="ios">ios</option>
			</select> <br>
			<button class="btn btn-lg btn-primary btn-block" type="submit"
				onclick="validForm()" formaction="RegisterEmployee">Register</button>

		</form>
	</div>
</body>
</html>