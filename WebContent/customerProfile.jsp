<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.servlets.DatabaseConnection"%>

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
	session.getAttribute("email");
	if(session.getAttribute("email")==null) {
		response.sendRedirect("CustLogin.jsp");
	} 
	
	DatabaseConnection connect = new DatabaseConnection();
	Connection connection = connect.getConnection();
	String id = null;
	
%>

  <div id="customerProfile">
    <div id="userTitleDisplay">
	  <h1>${first_name} ${last_name}</h1>
	  <img src="images/avatar.png">
    </div>
    <div id="userFormDisplay">
      <h1>General Info:</h1>
    	<%
	    	String queryCI = "Select * from customer_info where email='" +session.getAttribute("email")+ "';";
	    	
	    	if (connection!=null) {
	    		System.out.println("JSP connected");
	    	} else{
	    		System.out.println("JSP not connected");
	    	}
	    
	    	try (PreparedStatement pstmt = connection.prepareStatement(queryCI)) {
				
				if (pstmt!=null) {
					System.out.println("JSP CI statement object initialized!");
				}
				
				ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
					id = rs.getString("c_id");
		%>		
		<p>First Name: <%=rs.getString("first_name")%></p>	
		<p>Middle Name: <%=rs.getString("middle_name")%></p>		
		<p>Last Name: <%=rs.getString("last_name")%></p>
			<p class="hiddenGeneral">Update Last Name: <input type="text" class="hiddenGeneral"></p>
		<p>Date of Birth: <%=rs.getString("date_of_birth")%></p>
		<p>Email: <%=rs.getString("email")%></p>
		<p>Primary Address: <%=rs.getString("street_address")%>
		   <%=rs.getString("apt_number")%>,
		   <%=rs.getString("city")%>,
		   <%=rs.getString("state")%>
		   <%=rs.getString("zip_code")%>
		   <%=rs.getString("country")%></p>
		<p>Phone Number: <%=rs.getString("phone")%></p>	
		<p>Mobile Number: <%=rs.getString("mobile")%></p>
		<p>Secondary Address: <%=rs.getString("secondary_address")%></p>
		<%								
			}}catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
	    	}
    	%>
    	<div class="checkbox">
    	  <input type="checkbox" id="updateProfileGeneral"> Alter
    	</div>
    	
    	<h1>Coverage Type:</h1> <!-- Can swap out for simple coverage plan type -->
    	<%
	    	String queryCS = "Select * from customer_status where c_id=" +id+ ";";
	    	
	    	try (PreparedStatement pstmt = connection.prepareStatement(queryCS)) {
				
				if (pstmt!=null) {
					System.out.println("JSP CS statement object initialized!");
				}
				
				ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
		%>		
		<p>Coverage Type: <%=rs.getString("coverage_type")%></p>	
		<%				
			}}catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
	    	}
    	%>
    	<div class="checkbox">
    	  <input type="checkbox"> Alter
    	</div>
    	
    	<%-- <h1>Employment Info:</h1>
    	<%
	    	String queryCE = "Select * from customer_employment where c_id=" +id+ ";";
	    	
	    	try (PreparedStatement pstmt = connection.prepareStatement(queryCE)) {
				
				if (pstmt!=null) {
					System.out.println("JSP CE statement object initialized!");
				}
				
				ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
		%>		
		<p>Company Name: <%=rs.getString("company_name")%></p>	
		<p>Profession: <%=rs.getString("profession")%></p>		
		<p>Annual Income: <%=rs.getString("annual_income")%></p>
		<p>Federal Tax ID: <%=rs.getString("fed_tax_id")%></p>
		<%								
			}}catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}finally {
				connection.close();
			}
    	%>
    	<div class="checkbox">
    	  <input type="checkbox"> Alter
    	</div> --%>
    </div>
  </div><br><br>
  
<script>

	let hid = document.getElementsByClassName("hiddenGeneral");
	
	function updateProfile(e) {
		let target = e.target || e.srcElement;
	    for(i=0;i<hid.length;i++) {
		    if (target.checked) {
		      hid.className[i] = 'reveal';
		    } else {
			  hid.className[i] = 'hiddenGeneral';
		    }
	    }
	  }
	
	let chk = document.getElementById("updateProfileGeneral");
	chk.addEventListener("change", updateProfile);

</script>

<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>