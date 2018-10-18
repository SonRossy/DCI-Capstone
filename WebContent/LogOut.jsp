<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- author Clarissa Mercado
 Logs out the user -->
   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//Will update once we have a logout button or link
try{

	session.removeAttribute("user");
	session.removeAttribute("cpaymentMessage");
	session.removeAttribute("paymentDate");
	session.removeAttribute("paymentMessage");
	session.invalidate();
	//Redirect to homepage 
	response.sendRedirect("index.jsp");

}catch(Exception e){
	System.out.println(e.getMessage());
	session.removeAttribute("user");
	session.removeAttribute("cpaymentMessage");
	session.removeAttribute("paymentDate");
	session.removeAttribute("paymentMessage");
	session.invalidate();
	response.sendRedirect("index.jsp");
}
%>

</body>
</html>