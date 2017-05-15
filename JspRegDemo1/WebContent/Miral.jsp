<%@page import="java.util.LinkedList"%>
<%@page import="com.bridgeit.jspregistration.Employee"%>
<%@page import="org.omg.CORBA.Request"%>
<%@page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<style>
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
</style>

<script type="text/javascript">
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
				"<table class=table>"

				+ "<tr>" + "<th>" + "Employee Data" + "<th>" + "</tr>"

				+ "<tr class='danger'>" + "<td>" + "EmployeeName" + " </td>"
						+ "<td>" + name + "</td>" + "</tr>" +

						"<tr class=success>" + "<td>" + "Email Address"
						+ " </td>" + "<td>" + email + "</td>" + "</tr>"

						+ "<tr class=danger>" + "<td>" + "Address" + "</td>"
						+ "<td>" + address + "<td>" + "</tr>" + "</table>");

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
				console.log(data);
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
		console.log("Inside the delete")
		$("#DeleteDiv").show();
		$("#ok").show()
		$("#close").show()

	}
</script>

</head>
<body>
<body>

	<div data-role="main" class="ui-content">

		<table class="table"
			style="margin-top: 9%; margin-left: 20%; width: 60%">

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

					System.out.println("age" + age);

					if (count % 2 == 1) {
			%>
			<%
				if (count == 1) {
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
			<tr class="info">
				<td style="color: black;"><%=index++%></td>
				<td><a href="#myPopup" data-toggle="modal"
					data-target="#myModal" style="color: black;"
					onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=name%></a>
				</td>

				<td style="width: 1%;"><a href="#myPopup" data-toggle="modal"
					data-target="#myModal" style="color: black;"
					onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=email%></a>
				</td>
			</tr>

			<%
				} else {
			%>
			<tr>
				<td style="color: black;"><%=index++%></td>
				<td><a href="#myPopup" data-toggle="modal"
					data-target="#myModal" style="color: black;"
					onclick="getData1('<%=name%>','<%=email%>','<%=address%>','<%=mobile%>','<%=cname%>','<%=age%>','<%=gender%>','<%=languageKnown%>','<%=specialized%>')"><%=name%></a>
				</td>

				<td style="width: 1%;"><a href="#myPopup" data-toggle="modal"
					data-target="#myModal" style="color: black;"
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
			<div class="modal-dialog modal-sm">
				<div class="modal-content" style="width: 500px;">
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
									<td><input type="text" id="mail" name="email"
										placeholder="email"></td>
								</tr>
								<tr>
									<td><textarea rows="4" cols="37" name="address"
											placeholder="Address" id="Address" /></textarea></td>
								</tr>
								<tr>
									<td><input type="text" id="phone" name="mobile"
										placeholder="Mobile"></td>
								</tr>
								<tr>
									<td><input type="text" id="age" name="Age"
										placeholder="Age"></td>
								</tr>
								<tr>
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
							style="width: 100px; margin-left: 5px;" onclick="updateData()">Update</button>



						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btn2" style="width: 100px; margin-left: 5px;">Close</button>




						<button type="button" class="btn btn-default" data-dismiss="modal"
							data-toggle="modal" data-target="#myModal1" id="delete"
							onclick="delete1()" data-dismiss="modal"
							style="width: 100px; margin-left: 5px;">Delete</button>


						<button type="button" class="btn btn-default"
							onclick="updateData1()" id="submit" data-dismiss="modal"
							style="width: 100px; margin-left: 5px;">submit</button>
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
						id="close">Close</button>
				</div>
			</div>
		</div>
</body>
</html>