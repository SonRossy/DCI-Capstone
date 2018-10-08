<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.servlets.DatabaseConnection"%>
<%@page import="com.model.Member"%>

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

	<%
		
	/* if(session.getAttribute("user")==null) {
		response.sendRedirect("CustLogin.jsp");
	} */
	
	%>

  <div id="customerProfile">
    <div id="userTitleDisplay">
	  <h1>${user.first_name} ${user.last_name}</h1>
	  <img src="images/avatar.png">
    </div>
    <div id="userFormDisplay">
      <h1>General Info:</h1>
    		
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
    	
    	<h1>Coverage Type:</h1> <!-- Can swap out for simple coverage plan type -->
    		
		<p>Coverage Type: ${user.coverage}</p>	
		
    	<div id="hidden">
    		<br>
    		<h1>Update Information Below:</h1>
			<p>Update First Name: <input type="text" placeholder="${user.first_name}"></p>
			<p>Update Middle Name: <input type="text" placeholder="${user.middle_name}"></p>
			<p>Update Last Name: <input type="text" placeholder="${user.last_name}"></p>
			<p>Update Date of Birth: <input type="text" placeholder="${user.DOB}"></p>
			<p>Update Email: <input type="text" placeholder="${user.userEmail}"></p>
			<p>Update Primary Address: <input type="text" placeholder="${user.street}"></p>
			<p>Update Apartment Number: <input type="text" placeholder="${user.apt}"></p>
			<p>Update City: <input type="text" placeholder="${user.city}"></p>
			<p>Update State: <input type="text" placeholder="${user.state}"></p>
			<p>Update Zip Code: <input type="text" placeholder="${user.zip}"></p>
			<p>Update Country: <input type="text" placeholder="${user.country}"></p>
			<p>Update Phone: <input type="text" placeholder="${user.phone}"></p>
			<p>Update Mobile: <input type="text" placeholder="${user.mobile}"></p>
			<p>Update Secondary Address: <input type="text" placeholder="${user.secondaryAddress}"></p>
			<p>Update Coverage Type: <input type="text" placeholder="${user.coverage}"></p>
		</div>
		<div class="floatRight">
    		<span><input type="checkbox" id="checkbox">Edit Profile</span>
    	</div>
    </div>
  </div><br><br>
  
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