<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" type="text/css" href="css/unify.css">
<title>Register</title>
<style>
input[type=text], input[type=password], input[type=date], input[type=email] {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus, input[type=date], input[type=email] {
    background-color: #ddd;
    outline: none;
}
/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 15px;
}

/* Set a style for the submit button */
.button {
    background-color: #495C70;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
.button:hover {
    opacity: 1;
}
/* Add a blue text color to links */

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
#form-block {
  width: 850px;
  height: 775px;
  margin: 0 auto;
  background: #FFFEFE;
  clear: both;
}

#form-block--left {
  display: inline-block;
  float: left;
  position: relative;
  height: auto;
  width: 550px;
  padding-top: 20px;
}

#form-block--right {
  display: inline-block;
  float: right;
  position: relative;
  height: 100%;
  width: 300px;
}

#left-content {
  text-align: left;
  width: calc(100% - 60px);
  height: auto;
  padding: 30px;
}

#left-content h1 {
  position: inherite;
  display: inline-block;
  width: 100%;
  color: #414141;
  font-family: "lato", sans-serif;
  font-weight: 300;
  font-size: 30px;
}

#left-content h2 {
  position: inherite;
  display: inline-block;
  width: 100%;
  color: #939AA8;
  font-family: "lato", sans-serif;
  font-weight: 600;
  font-size: 12px;
}

.small-text {
  position: inherite;
  font-family: "Lato", sans-serif;
  font-size: 13px;
  font-weight: 300;
  color: #999FAD;
  line-height: 25px;
  display: inline-block;
}


.icon {
  display: inline-block;
  font-size: 18px;
  position: absolute;
  left: 50px;
  margin-top: -3px;
}
hr {
  display: inline-block;
  position: inherite;
  margin: 10px 0;
  color: #939AA8;
  opacity: 0.4;
  width: 100%;
}

.bottom-text {
  font-family: "Lato", sans-serif;
  font-size: 14px;
  font-weight: 300;
  color: #414141;
  padding: 20px 30px;
}

.email-link {
  position: absolute;
  right: 40px;
  font-family: "Lato", sans-serif;
  font-size: 11px;
  font-weight: 400;
  letter-spacing: 1px;
  text-decoration: none;
  color: #64C900;
}
.email-link:hover {
  color: #6AD500;
  font-weight: 600;
}

#form-block--right img {

  display: inline-block;
  width: 100%;
  height: 100%;
  border-left: 1px solid #939AA8;
  border-radius: 0px 10px 10px 0px;
}

</style>

</head>


<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

<form role = "form" action = "RegistrationServlet" method ="post">
<div id="form-block">
  <div id="form-block--left">
    <div id="left-content">
    <p style="color: #e90000;"> ${msgFromRegistrationServlet}</p> 
      <h1>Become a member</h1><span class="small-text"> Please fill out the field below: </span><br/><br>

    <label for="fisrtName"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="first-name" required>
    
    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="last-name" required>
 
 
  <label for="dateOfBirth"><b>Date of Birth</b></label>
    <input type="text" name="dateOfBirth" placeholder="YYYY-MM-DD" required 
pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" 
title="Enter a date in this format YYYY-MM-DD"/>
 
 
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
 
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

 	 <p> By submitting this form, you accept our <a href = "PrivacyPolicy.html">privacy policy</a><br>

   <input type="submit" class="button" value="SUBMIT">
    </div>
   	<p class="bottom-text">You can also sign in using an email address <a class="email-link" href="#" title="Sign in by Email">USE YOUR EMAIL &#8594;</a></p>
 	 </div>
  	<div id="form-block--right"><img src="images/user-reg-img.png"/></div>
    </form>  

<script>
  var password = document.getElementById("psw");
  var confirm_password = document.getElementById("psw-repeat");
  function validatePassword(){
    if(password.value != confirm_password.value) {
      confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
      confirm_password.setCustomValidity('');
    }
  }
  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
</script>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
 
</body>

</html>