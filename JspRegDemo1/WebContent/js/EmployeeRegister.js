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
}

function validForm() {
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
