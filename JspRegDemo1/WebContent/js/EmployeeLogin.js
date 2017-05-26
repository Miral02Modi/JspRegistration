	function validEmailId() {
		var email = document.getElementById('email').value;
		if (email == "") {
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