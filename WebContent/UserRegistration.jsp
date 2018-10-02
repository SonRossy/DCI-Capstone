<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="css/UserRegistration.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>
<body>
<a href="index.html"><i class="fa fa-home" style="font-size:65px; color: #fff; float: right;opacity: 0.8;"></i> </a>     
        <nav id="site-nav" role="navigation">
<form role = "form" action = "RegistrationServlet" method ="post">
<div id="form-block">
  <div id="form-block--left">
    <div id="left-content">
    <p style="color: #e90000;"> ${msgFromRegistrationServlet}</p> 
      <h1>Become a member</h1><span class="small-text"> Please fill out the field below: </span><br/><br>

    <label for="fisrtName"><b>First Name</b></label>
    <input type="text" placeholder="Enter Fisrt Name" name="first-name" required>
    
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
   
   
</div>


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



</body>
</html>