<%@page import="java.util.LinkedList"%>
<%@page import="com.bridgeit.jspregistration.Employee"%>
<%@page import="org.omg.CORBA.Request"%>
<%@page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="js/EmployeeDetails.css">	 -->
<style>
.ui-mobile .ui-page {
	min-height: 300px;
	background-color: #bac9d6;
}

.h4, h4 {
	text-align: center;
	font-size: 18px;
}

.modal-header {
	padding: 15px;
	border-bottom: 1px solid #e5e5e5;
	background-color: #f4a742;
}

.modal-footer {
	padding: 15px;
	text-align: right;
	border-top: 1px solid #e5e5e5;
	background-color: #f4a742;
}

/* .wrapper {
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

.form-control {
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
}

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
} */
.ui-page-theme-a a, html .ui-bar-a a, html .ui-body-a a, html body .ui-group-theme-a a
	{
	color: #38c;
	/* font-weight: 700; */
}

.container {
	width: 100%;
	background-color: #519ad6;
}

.content {
	margin-top: 30%;
}
</style>

<script src=js/EmployeeDetails.js type="text/javascript">
	



/* 	function bodyHide() {
		var x = document.getElementById('bodydata');
	    if (x.style.display === 'none') {
	        x.style.display = 'block';
	    } else {
	        x.style.display = 'none';
	    }
	}


	var getData1 = function(name, email, address, mobile, cname, age, gender,
			languageKnown, specialized) {

		console.log(age);
		$("#updateDiv").hide();
		$("#DeleteDiv").hide();
		$("#myPopup").show();
		$("#delete").show();
		$("#btn1").show();
		$("#btn2").show();
		$("#submit").hide();
		$("#ok").hide()
		$("#close").hide()

		$("#myPopup").text(name, email, address);
		$("#myPopup").html(
			
				"<table class=table style=border-radius:8px;>"

				+ "<tr>" + "<th>" + "Employee Data" + "<th>" + "</tr>"

				+ "<tr>" + "<td>" + "EmployeeName" + " </td>"
						+ "<td>" + name + "</td>" + "</tr>" +

						"<tr>" + "<td>" + "Email Address"
						+ " </td>" + "<td>" + email + "</td>" + "</tr>"
						
						+ "<tr>" + "<td>" + "Address" + "</td>"
						+ "<td>" + address + "</td>" + "</tr>" 
						
						+ "<tr>" + "<td>" + "mobile" + "</td>"
						+ "<td>" + mobile + "</td>" + "</tr>" 	
						+ "<tr>" + "<td>" + "cname" + "</td>"
						+ "<td>" + cname + "</td>" + "</tr>" 
						+ "<tr>" + "<td>" + "age" + "</td>"
						+ "<td>" + age + "</td>" + "</tr>" 
						+ "<tr>" + "<td>" + "gender" + "</td>"
						+ "<td>" + gender + "</td>" + "</tr>" 
						+ "<tr>" + "<td>" + "languageKnown" + "</td>"
						+ "<td>" + languageKnown + "</td>" + "</tr>" 
						+ "<tr>" + "<td>" + "specialized" + "</td>"
						+ "<td>" + specialized + "</td>" + "</tr>" 
						+ "</table>"
						
						
		);

		$("#nam").val(name);
		$("#mail").val(email);
		$("#Address").val(address);
		$("#phone").val(mobile);
		$("#cname").val(cname);
		$("#age").val(age);
		$("#gender").val(gender);
		$("#language").val(languageKnown);
		
		$("#special").val(specialized);

	};
	
	

	var updateData = function() {
		console.log('your message');
		$("#myPopup").hide();
		$("#updateDiv").show();
		$("#submit").show();
		$("#btn1").hide();
		$("#btn2").hide();
		$("#delete").hide();
	}

	var updateData1 = function() {

		var data = {};

		data.name = $("#nam").val();
		data.email = $("#mail").val();
		data.address = $("#Address").val();
		data.phone = $("#phone").val();
		data.cname = $("#cname").val();
		data.age = $("#age").val();
		data.gender = $("#gender").val();
		data.language = $("#language").val();
		data.special = $("#special").val();

		$.ajax({
			url : 'updateData',
			data : data,
			type : 'post',
			success : function(data) {
				//console.log(data);
				$("#bodyId").html(data);
			},
			error : function() {
				alert(error)
			}
		});
	}

	var deleteData = function() {
		var email;
		email = $("#mail").val();
		console.log(email);
		$.ajax({
			url : 'DeleteData',
			data : {
				"mail" : email
			},
			type : 'post',
			success : function(data) {
				console.log(data);
			},
			error : function() {
				alert("error Delete data");
			}
		});
	}

	var delete1 = function() {
		$("#DeleteDiv").show();
		$("#ok").show();
		$("#close").show();

	}

	function validMail() {
		var email = document.getElementById('mail').value;
		
		var atpos = email.indexOf("@");
	    var dotpos = email.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Not a valid e-mail address");
	        return false;
	    }
		
		if (email == "") {
			//alert('Please Enter First Name');
			document.getElementById("p1").innerHTML = "*Please enter a email*";
			document.getElementById("email").style.borderColor = "red";
			return false;
		} 
	
		else {
			document.getElementById("p1").innerHTML = "";
			document.getElementById("email").style.borderColor = "green";
			return true;
		}

	}
	
	
	function validPhone(){
		var number = document.getElementById('phone').value;
		
		if(/^\d{10}$/.test(number)){
			
		}else{
			alert("Invalid number; must be ten digits")
		    number.focus()
		}
	}
	

*/
</script>

</head>


<!-- <script type="text/javascript" src="http://mydomain.com/xxxx.js"></script> -->

<!-- Navbar of boostrap -->
<!-- <div class="container">
	<div class="navBar" id="fixed">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				
				<a
					style="font-family: verdana; color: white; text-shadow: 5px 5px 10px blue;"
					class="navbar-brand navbar-text;" href="#">Bridgelabz</a>
				<a href="registerEmployeeController"
					style="text-decoration: none;color:white;font-weight: 0px" class="navbar-brand" >Registration</a>
					
	
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				
				<ul class="collapse navbar-collapse">
						<li><a href="login" style="color: white; float: right; font-weight: 0px;" class="navbar-brand"
					onclick="navLoad()">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div> -->

<body id="bodydata">
<div class="container">
	<!-- <div class="navBar" id="fixed"> -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">

			<div class="collapse navbar-collapse">


				<ul class="nav navbar-nav">
					<li><a
						style="font-family: verdana; color: white; text-shadow: 5px 5px 10px blue;"
						class="navbar-brand" class="navbar-text;" href="#"><em>Bridgelabz</em></a></li>
					<li><a href="registerEmployeeController" onclick="bodyHide()">Register</a></li>
				</ul>
				<div>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login" style="float: right;">Logout</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</div>



<div class="container content" style="margin-top: 58px;">


	<!-- data-role="main" -->
	<!-- class="ui-content" -->
	<div class="row" style="background-color: #bac9d6;">
		<!-- <div class="row"> -->
		<div class="col-lg-4 col-sm-3"></div>
		<!-- margin-left: 20%; -->
		<div class="col-lg-4 col-sm-6">
			<table class="table"
				style="margin-top: 9%; box-shadow: 0 0 20px 0 rgba(20, 30, 0, 0.2), 20px 20px 20px 20px rgba(0, 0, 0, 0.24);">

				<%
					LinkedList linkedList = (LinkedList) request.getAttribute("EmployeeInformation");

					String name = "";
					String email = "";
					String address = "";
					String mobile = "";
					String cname = "";
					String age = "";
					String gender = "";
					String languageKnown = "";
					String specialized = "";
					int count = 0, index = 1;
					for (int i = 0; i < linkedList.size(); i++) {

						Employee employee = (Employee) linkedList.get(i);

						name = employee.getName();
						email = employee.getMail();
						address = employee.getAddress();
						mobile = employee.getMobile();
						cname = employee.getCname();
						age = employee.getAge();
						gender = employee.getGender();
						languageKnown = employee.getLanguageKnown();
						specialized = employee.getSpecialized();
				%>

				<%
					if (index == 1) {
				%>
				<thead
					style="background: #337ab7; text-shadow: text-shadow: 2px 2px 5px white; color: white;">
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Email Id</th>
					</tr>
				</thead>
				<%
					}
				%>
				<%
					if (count % 2 == 1) {
				%>
				<tr class="info">
					<td style="color: black;"><%=index++%></td>
					<td><a href="#myPopup" data-toggle="modal"
						data-target="#myModal" style="color: black;"
						data-position="<%=i%>"
						onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=name%></a>
					</td>

					<td style="width: 1%;"><a href="#myPopup" data-toggle="modal"
						data-target="#myModal" style="color: black;"
						data-position="<%=i%>"
						onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=email%></a>
					</td>
				</tr>

				<%
					} else {
				%>
				<tr>
					<td style="color: black; background-color: white;"><%=index++%></td>
					<td style="background-color: white;"><a href="#myPopup"
						data-toggle="modal" data-target="#myModal" style="color: black;"
						data-position="<%=i%>"
						onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=name%></a>
					</td>

					<td style="width: 1%; background-color: white;"><a
						href="#myPopup" data-toggle="modal" data-target="#myModal"
						style="color: black;" data-position="<%=i%>"
						onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=email%></a>
					</td>
				</tr>

				<%
					}
						count++;
					}
				%>

			</table>





			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-md">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								style="background-color: #f4a742">&times;</button>
							<h4 class="modal-title">Employee Information</h4>
						</div>
						<div id="myPopup"></div>



						<!-- update popup design -->

						<div id="updateDiv" style="background-color: #ddd;">
							<%-- <jsp:include page="UpdateFile.jsp"></jsp:include> --%>
							<form style="margin-left: 28%;">
								<table style="margin-right: 40%;">
									<tr>
										<td><input type="text" id="nam" name="name"
											placeholder="name"></td>
									</tr>
									<tr>
										<td><input type="email" id="mail" name="email"
											onblur="validMail()" placeholder="email"></td>
										<p id="p1" style="color: red"></p>
									</tr>
									<tr>
										<td><textarea rows="4" cols="37" name="address"
												placeholder="Address" id="Address" /></textarea></td>
									</tr>
									<tr>
										<td><input type="number" id="phone" name="mobile"
											placeholder="Mobile" onblur="validPhone()"></td>
									</tr>
									<tr>
										<td><input type="number" id="age" name="Age" min="1"
											max="150" placeholder="Age"></td>
									</tr>
									<tr>
										<!-- employeeDetails -->
										<td><input type="text" id="cname" name="Cname"
											placeholder="Company name"></td>
									</tr>
									<tr>
										<td><input type="text" id="gender" name="Gender"
											placeholder="gender"></td>
									</tr>
									<tr>
										<td><input type="text" id="language" name="Language"
											placeholder="languageKnown"></td>
									</tr>
									<tr>
										<td><input type="text" id="special" name="Special"
											placeholder="Specialized"></td>
									</tr>
								</table>
							</form>

						</div>

						<div class="modal-footer" id="footer">

							<button type="button" class="btn btn-default" id="btn1"
								style="width: 100px; margin: 0px 5px; float: left;"
								onclick="updateData()">Update</button>

							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="btn2"
								style="width: 100px; margin: 0px 5px; float: left;">Close</button>

							<button type="button" class="btn btn-default"
								data-dismiss="modal" data-toggle="modal" data-target="#myModal1"
								id="delete" onclick="delete1()" data-dismiss="modal"
								style="width: 100px; margin: 0px 5px; float: left;">Delete</button>

							<button type="button" class="btn btn-default"
								onclick="updateData1()" id="submit" data-dismiss="modal"
								style="width: 100px; margin-left: 5px;">submit</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="myModal1" role="dialog">
	<div class="modal-dialog">
		<div id="DeleteDiv">
			<button type="button" class="btn btn-default" data-dismiss="modal"
				onclick="deleteData()" id="ok">OK</button>
			<button type="button" class="btn btn-default" data-dismiss="modal"
				id="close">Cancel</button>
		</div>
	</div>
</div>
</body>
</html>