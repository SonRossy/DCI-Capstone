<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/unify.css">
	<title>Plan Options</title>
<style>
.flexwrapper {
text-align: center;
 padding-bottom:5%;
}
.flexwrapper > section {
  display: inline-block;
  border-left: 1em solid #eff5f5;
  width: 20%;
  height: auto;
  padding: 30px; 
  margin-bottom: .5em;
 
}
.flexwrapper > section:nth-child(1) { background: #a9cc5b; }
.flexwrapper > section:nth-child(2) { background: #39b4e0; }
.flexwrapper > section:nth-child(3) { background: #e4582b; }

body { background: #eff5f5; color: #31656e;}
h1 {padding-top:10px; font-weight: 900; font-size: 1.6em; line-height: 1.2; text-align: center}
h2 { font-weight: 400; font-size: 1em; color: #597a80; text-transform: uppercase; margin: .5em 0 4em; letter-spacing: .25em; text-align: center}
p  {color: #eff5f5;}
}
</style>

</head>

<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

<h1> Choose your plan today   </h1>
<h2>We have many affordable plans offering unbeatable coverage. </h2>

<div class="flexwrapper">
  <section> 
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates libero quisquam aspernatur porro, sint at iste dolor vel odit magni similique modi. Voluptate saepe necessitatibus, tenetur distinctio deserunt est molestiae.</p> <br>
  <h1> PLAN A </h1> </section>
  <section>   <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates libero quisquam aspernatur porro, sint at iste dolor vel odit magni similique modi. Voluptate saepe necessitatibus, tenetur distinctio deserunt est molestiae.</p> <br><h1> PLAN B </h1> </section>
  <section>   <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates libero quisquam aspernatur porro, sint at iste dolor vel odit magni similique modi. Voluptate saepe necessitatibus, tenetur distinctio deserunt est molestiae.</p> <br><h1> PLAN C </h1></section>
</div>

<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>

</html>