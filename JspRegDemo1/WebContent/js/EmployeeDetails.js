function bodyHide() {
		var x = document.getElementById('bodydata');
	    if (x.style.display === 'none') {
	        x.style.display = 'block';
	    } else {
	        x.style.display = 'none';
	    }
}


var getData1 = function(name, email, address, mobile, cname, age, gender, languageKnown, specialized) {
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
						/* 	employeeDetails */
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
			type : 'post',
			data : {
				"mail" : email
			},
			success : function(data) {
				$("#bodyId").html(data);
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
