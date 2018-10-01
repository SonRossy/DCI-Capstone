<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="css/UserRegistration.css">
</head>
<body>

<form role = "form" action = "RegistrationServlet" method ="post">
<div id="form-block">
  <div id="form-block--left">
    <div id="left-content">
    <p style="color: #e90000;"> ${msgFromRegistrationServlet}</p> 
      <h1>Become a member</h1><span class="small-text"> PLease fill out the field below: </span><br/><br>

    <label for="fisrtName"><b>First Name</b></label>
    <input type="text" placeholder="Enter Fisrt Name" name="first-name" required>
    
    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="last-name" required>
 
 
  <label for="dateOfBirth"><b>Date of Birth</b></label>
    <input type="text" name="input" placeholder="YYYY-MM-DD" required 
pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" 
title="Enter a date in this format YYYY-MM-DD"/>
 
 
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
 
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

    <input type="submit" class="button" value="SUBMIT">
     </div>
    <p class="bottom-text">You can also sign in using an email address <a class="email-link" href="#" title="Sign in by Email">USE YOUR EMAIL &#8594;</a></p>
  </div>
  <div id="form-block--right"><img src="images/user-reg-img.png"/></div>
  
    </form>
   
   
</div>



</body>
</html>