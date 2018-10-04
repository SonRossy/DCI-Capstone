<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/unify.css">
<style type="text/css">
  .words{
  color:grey;
 padding-top: 1%;
  padding-right: 8%;
  padding-left: 8%;

text-align: left;
}
.buttons{
 display: inline-block;
 width:40%;

}
#rojan{
  max-height: 170%;
  max-width: 100%;
}

.card-container  {
  padding-bottom: 230px;
  width: 50%;
  cursor: pointer;
  height: 150px;
  perspective: 600px;
  position: relative;
 display: inline-block;

}
.card {
height: 100%;
  position: absolute;
  transform-style: preserve-3d;
  transition: all 1s ease-in-out;
width: 100%;
}
.card:hover {
  transform: rotateY(180deg);
}
.card .side {
  backface-visibility: hidden;
  border-radius: 6px;
 height: 100%;
  overflow: hidden;
  width: 100%;
  position: absolute;
}
.card .back {

  background: #8E93A9;
  color: #495C70;
  line-height: 150px;
  text-align: center;
  transform: rotateY(180deg);
}

button {
 width: 200px;
}
/* Boostrap Buttons Styling */

.btnlife, .btnhome, .btnauto, .btnhealth {
margin: 0 auto;
  font-size: 2.0rem;
  padding: 1.25rem 2.5rem;
  display: block;
  background-color: #6597b5;
  border: 1px solid transparent;
  color: #ffffff;
  font-weight: 300;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  margin-top: 20px;
  margin-bottom: 40px;
}

.btnlife:hover, .btnhome:hover, .btnauto:hover, .btnhealth:hover {
 background-color: #292B31;
  color: #6597b5;
  border-color: #6597b5;
}
</style>

    <title>Make a Claim</title>
  </head>
<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

<div class="words">
    <h1>Make a Claim</h1>
    <br>
    <p>Submit a claim online with our easy filing process.  You can also submit a claim by traditional mail, email or secure fax. Mailing addresses and fax numbers are included on your form for your convenience. Don't forget to make copies of everything you mail for your own records.</p>
    <br>
    <h1 style="color: #495C70; font-size: 42px;"> What Type of Claim Would You Like to Make? </h1>
    <br>
  </div>
  <div class="buttons">
 <button class="btnlife">Life</button>
<button class="btnhealth">Health</button>
<button class="btnauto">Auto</button>
<button class="btnhome">Home</button>
 </div>

<div class="card-container">
    <div class="card">
    <div class="side"><img id="rojan" src="images/rojan.png" alt="pic"></div>
    <div class="side back">Meet one of our claim representatives, Rojan.</div>
  </div>
</div>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>