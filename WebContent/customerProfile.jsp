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
          </ul>
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
		
		<!-- Hidden form allowing user to update selected information -->
    	<div id="hidden">
    		<br>
    		<h1 class="padding">Update Information Below:</h1>
			<form action="customerProfile" method="post">
			<p>First Name: <input type="text" name="first_name" value="${user.first_name}" placeholder="${user.first_name}"></p>
			<p>Middle Name: <input type="text" name="middle_name" value="${user.middle_name}" placeholder="${user.middle_name}"></p>
			<p>Last Name: <input type="text" name="last_name" value="${user.last_name}" placeholder="${user.last_name}"></p>
			<p>Email: <input type="text" name="email" value="${user.userEmail}" placeholder="${user.userEmail}"></p>
			<p>Phone: <input type="text" name="phone" value="${user.phone}" placeholder="${user.phone}"></p>
			<p>Mobile: <input type="text" name="mobile" value="${user.mobile}" placeholder="${user.mobile}"></p>
				<button type="submit" value="Submit">Update</button>
			</form>
		</div>
		<div class="floatRight">
    		<span><input type="checkbox" id="checkbox">Edit Profile</span>
    	</div>
    </div>
  </div>
  <br><br><br><br><br><br><br><br><br><br>

<!-- Author of JS: Noel Cortes -->  
<script>

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

</script>

<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>