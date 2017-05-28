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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"> -->
<link rel="stylesheet" type="text/css" href="css/EmployeeDetails.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src=js/EmployeeDetails.js type="text/javascript"></script>
</head>
<body style="background-color: #bac9d6;" id="bodyId">
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top" style="height: 1%">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<p class="navbar-brand">Bridgelabz</p>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="registerEmployeeController">Register</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="LogoutUser"><span
								class="glyphicon glyphicon-user"></span>Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>


	<div class="container content" style="margin-top: 12%;">


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
						LinkedList<Employee> linkedList = (LinkedList) request.getAttribute("EmployeeInformation");

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

							<div class="container" id="updateDiv"
								style="background-color: #ddd;">
								<%-- <jsp:include page="UpdateFile.jsp"></jsp:include> --%>
								<form style="margin-left: 28%;" class="form-horizontal">
									<div>
										<table style="margin-right: 40%; width: 100%;border: 0" class="table">
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
												<td><textarea rows="4" name="address"
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
									</div>
								</form>

							</div>

							<div class="modal-footer" id="footer">

								<button type="button" class="btn btn-default" id="btn1"
									style="width: 100px; margin: 0px 5px; float: left;"
									onclick="updateData()">Update</button>

								<!-- <button type="button" class="btn btn-default"
									data-dismiss="modal" id="btn2"
									style="width: 100px; margin: 0px 5px; float: left;">Close</button> -->

								<button type="button" class="btn btn-default"
									data-dismiss="modal" data-toggle="modal"
									data-target="#myModal1" id="delete" onclick="delete1()"
									data-dismiss="modal" 
									style="width: 100px; margin: 0px 5px; float: left;">Delete</button>

								<button type="button" class="btn btn-default"
									onclick="updateData1()" id="submit" data-dismiss="modal"
									style="width: 100px; margin-left: 5px;">submit</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal" style="float: left;">Cancel</button>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div>
		<div class="modal fade" id="myModal1" role="dialog" id="DeleteDiv">
			<div class="modal-dialog">
				<div class="modal-body">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="width: 100%;" onclick="deleteData()" id="ok">OK</button>
					<button type="button" class="btn btn-default" data-dismiss="modal"
						style="width: 100%;" id="close">Cancel</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>