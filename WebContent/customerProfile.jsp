<!-- Author of webpage: Noel Cortes -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DCI: ${first_name} ${last_name}</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/unify.css">
	<link rel="stylesheet" type="text/css" href="css/customerProfile.css">
</head>
<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

  <div id="customerProfile">
    <!-- Displays user's full name and an avatar picture -->
    <div id="userTitleDisplay">
	  <h1 class="padding">${user.first_name} ${user.last_name}</h1>
	  <img src="images/avatar.png">
	  <br>
	  <div id="userNavField">
        <fieldset>
          <!-- Quicklinks create navigation side-bar for user -->
          <h1>Quicklinks</h1>
          <ul>
      	    <li><a href="payment.jsp">Payment</a></li>
      	    <li><a href="shopinsurance.jsp">Shop Insurance</a></li>
            <li><a href="findagent.jsp">Find an Agent</a></li>
            <li><a href="PlanOption.jsp">Plan Options</a></li>
            <li><a href="LogOut.jsp">LogOut</a></li>
            <li><a href="Claims.jsp">File a Claim</a></li>
            <li><a href="FAQ.jsp">FAQ</a></li>
            <li><a href="javascript: updatePassword()">Update Password</a></li>
            <p style="color:salmon">${passwordMessage}</p>
            <br>
	            <p style="color: red">${passwordError}</p>
            <br>
          </ul>
        </fieldset>
      </div>
      <!-- Hidden form allowing user to update password -->
      <div id="hiddenPassword">
      	<fieldset>
	      <form action="passwordUpdate" onsubmit="return checkAll()" method="post">
	      		<h4>Update Password</h4>
	      	<p><label for="oldPassword">Enter password: </label><input type="password" name="oldPassword" name="oldPassword" id="oldPassword" required></p>
	      	<p>	<label for="newPassword">Enter new password: </label><input type="password" name="newPassword" name="newPassword" id="newPassword" required></p>
	      	<p>	<label for="confirmNewPassword">Confirm new password: </label><input type="password" name="confirmNewPassword" name="confirmNewPassword" id="confirmNewPassword" required></p><br>
	      	<input type="submit" value="Update Password">
	      	<div id="message">
  				<h4>Password must contain the following:</h4>
  				<p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  				<p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  				<p id="number" class="invalid">A <b>number</b></p>
  				<p id="length" class="invalid">Minimum <b>8 characters</b></p>
			</div>
	      </form>
	    </fieldset>
      </div>
    </div>
    <!-- Displays user's information -->
    <div id="userFormDisplay">
      <h1 class="padding">General Info:</h1>
    		
		<p>First Name: ${user.first_name}</p>	
		<p>Middle Name: ${user.middle_name}</p>		
		<p>Last Name: ${user.last_name}</p>
		<p>Date of Birth: ${user.DOB}</p>
		<p>Email: ${user.userEmail}</p>
		<p>Primary Address: ${user.street}
		   ${user.apt},
		   ${user.city},
		   ${user.state}
		   ${user.zip}
		   ${user.country}</p>
		<p>Phone Number: ${user.phone}</p>	
		<p>Mobile Number: ${user.mobile}</p>
		<p>Secondary Address: ${user.secondaryAddress}</p>
    	
    	<h1 class="padding">Coverage Type:</h1>
		<p>Coverage Type: ${user.coverage}</p>	
		<p>${cpaymentMessage}</p>
    	<p>${paymentDate}</p> 
    	<br>
    		<p style="color: red">${profileMessage}</p>
            <p style="color: red">${error}</p>
        <br>
		<!-- Hidden form allowing user to update selected information -->
    	<div id="hidden">
    		<br>
    		<h1 class="padding">Update Information Below:</h1>
			<form id="updateform" action="customerProfile" onsubmit="return Validate()" method="post">
				<p>First Name: <input type="text" name="first_name" id="first_name" value="${user.first_name}" placeholder="${user.first_name}"></p>
				<p>Middle Name: <input type="text" name="middle_name" id="middle_name" value="${user.middle_name}" placeholder="${user.middle_name}"></p>
				<p>Last Name: <input type="text" name="last_name" id="last_name" value="${user.last_name}" placeholder="${user.last_name}"></p>
				<p>Email: <input type="email" name="email" id="email" onblur="validateEmail()" value="${user.userEmail}" placeholder="${user.userEmail}" pattern="[^\s@]+@[^\s@]+\.[^\s@]+" title="Please enter phone number similar ex: person@email.com"></p>
					<%-- <p>Phone: <input type="text" name="phone" id="phone" onblur="Validate()" value="${user.phone}" placeholder="${user.phone}" ></p> --%>
				<p>Phone: <input type="text" name="phone" id="phone" onblur="validatePhone()" value="${user.phone}" placeholder="${user.phone}" pattern="^\d{10}" title="Please enter phone number similar ex: 1234567890"></p>
				<p>Mobile: <input type="text" name="mobile" id="mobile" value="${user.mobile}" placeholder="${user.mobile}" ></p>
					<!-- <button type="submit" value="Submit" onclick="return Validate()">Update</button> -->
				<button id="submit" type="submit" value="Submit">Update</button>
			</form>
		</div>
		<div class="floatRight">
    		<span><input type="checkbox" id="checkbox">Edit Profile</span>
    	</div>
    </div>
  </div>
  <br><br>

  
<script>
/*Start: Author of JS functions updateProfile() and updatePassword(): Noel Cortes */ 
	let hidden = document.getElementById("hidden");
	
	function updateProfile(e) {
		let target = e.target || e.srcElement;
	    if (target.checked) {
	      hidden.id = 'reveal';
	    }else{
		  hidden.id = 'hidden';
	    }
	}
	
	let chk = document.getElementById("checkbox");
	chk.addEventListener("change", updateProfile);

	function updatePassword() {
		let hiddenPassword = document.getElementById("hiddenPassword") || document.getElementById("reveal");
		if(hiddenPassword.id == "hiddenPassword") {
			hiddenPassword.id = "reveal";
		} else {
			hiddenPassword.id = "hiddenPassword";
		}
	}
/*End: Author of JS functions updateProfile() and updatePassword(): Noel Cortes */ 

	
	/* let hiddenPassword = document.getElementById("hiddenPassword");
	hiddenPassword.addEventListener("click", updatePassword);
 */
 /* Author of JS functions validatePassword() and its contents:  Clarissa Mercado  */
 	var password = document.getElementById("newPassword");
	var confirm_password = document.getElementById("confirmNewPassword");
 	function validatePassword(){
  	 if(password.value != confirm_password.value) {
     	confirm_password.setCustomValidity("Passwords Don't Match");
  	 } else {
     confirm_password.setCustomValidity('');
   	}
 	}
	 password.onchange = validatePassword;
 	confirm_password.onkeyup = validatePassword;
 	
 	var myInput = document.getElementById("newPassword");
 	var letter = document.getElementById("letter");
 	var capital = document.getElementById("capital");
 	var number = document.getElementById("number");
 	var length = document.getElementById("length");
 	
 // When the user starts to type something inside the password field
 	myInput.onkeyup = function() {
 	  // Validate lowercase letters
 	  var lowerCaseLetters = /[a-z]/g;
 	  if(myInput.value.match(lowerCaseLetters)) { 
 	    letter.classList.remove("invalid");
 	    letter.classList.add("valid");
 	  } else {
 	    letter.classList.remove("valid");
 	    letter.classList.add("invalid");
 	}

 	  // Validate capital letters
 	  var upperCaseLetters = /[A-Z]/g;
 	  if(myInput.value.match(upperCaseLetters)) { 
 	    capital.classList.remove("invalid");
 	    capital.classList.add("valid");
 	  } else {
 	    capital.classList.remove("valid");
 	    capital.classList.add("invalid");
 	  }

 	  // Validate numbers
 	  var numbers = /[0-9]/g;
 	  if(myInput.value.match(numbers)) { 
 	    number.classList.remove("invalid");
 	    number.classList.add("valid");
 	  } else {
 	    number.classList.remove("valid");
 	    number.classList.add("invalid");
 	  }

 	  // Validate length
 	  if(myInput.value.length >= 8) {
 	    length.classList.remove("invalid");
 	    length.classList.add("valid");
 	  } else {
 	    length.classList.remove("valid");
 	    length.classList.add("invalid");
 	  }
 	
 }
 
/*Start: Author of checkAll(): Noel Cortes */ 
 	function checkAll() {
 		var letter = document.getElementById("letter");
 	 	var capital = document.getElementById("capital");
 	 	var number = document.getElementById("number");
 	 	var length = document.getElementById("length");
 	 	
 	 	if(length.classList.contains("invalid") || number.classList.contains("invalid") || 
 	 		capital.classList.contains("invalid") || letter.classList.contains("invalid")) {
 	 		return false;
 	 	}
 	}
/*End: Author of checkAll(): Noel Cortes */ 

 
/*Start: Author of JS functions updateProfile() and updatePassword(): Naresh Kc
 * Contributor: Noel Cortes
 */
/*  Funtions to validate the Update Section */
  // return value.match(/\d/g).length===10;
 //Validate Phone #
function validatePhone() {
	let userPhone = document.getElementById("phone");
	let patternReturn = /^\d{10}/;
	if (!patternReturn.test(userPhone.value) || Number(userPhone.value)>=(1000*1000*1000*10)) {
		return false;  	  
	}
	else {
		return true;
	}
}

//Validate Email
function validateEmail() {
	let x = document.forms["updateform"]["email"].value;
	let re = /[^\s@]+@[^\s@]+\.[^\s@]+/;
	if(!re.test(x)) {
    	return false;
    }
	else {
    	return true;
    }
}  

function Validate(){
	console.log("here on Validate()");
	if(validateEmail() === false || validatePhone() === false){
		return false;
	} 
	else {
		return true;
	}
}
/*End: Author of JS functions updateProfile() and updatePassword(): Noel Cortes */ 

</script>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>