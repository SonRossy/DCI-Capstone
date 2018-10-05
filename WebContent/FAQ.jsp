<%--Author: Caroline Kops --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" type="text/css" href="css/unify.css">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
	<title>FAQ</title>
<style>
h1{
  margin:15px;
}
#right{
  margin-right:5%;
  padding:auto;
  margin-top:10%;
  display: inline-block;
  vertical-align: middle;
  overflow: hidden;
  float:right;
  object-position: middle;
  width:40%;
height: 100%;

}
.accordion {
    overflow: hidden;
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 50%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
    padding: 20px;
    margin-bottom: 10px;
}

.active, .accordion:hover {
    background-color: #ccc; 
}

.panel {
    width: 40%;
    padding: 0 18px;
    display: none;
    background-color: white;
    overflow: hidden;
}
</style>
</head>

<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

<section id="right">
  <img src="images/son.png" alt="son rossy" height="100%" width="100%">
</section>

<h1>Frequently Asked Questions</h1>

<button class="accordion">What are the Different Ways to Make a Payment?</button>
<div class="panel">
  <p>You can make a payment on your account online, by mail, or at your local DCI location.</p>
</div>

<button class="accordion">How do I File a Claim?</button>
<div class="panel">
  <p>Go to the "File a Claim" tab on the DCI website, and follow those instructions.</p>
</div>

<button class="accordion">I Forgot my Password/Username</button>
<div class="panel">
  <p>Send an email to a representative and we'll help you reset your account .</p>
</div>

<button class="accordion">Can I Make a Late Payment?</button>
<div class="panel">
  <p>You can make a late payment if we have not canceled your policy due to non-payment.  You will recieve a cancellation notice after 2 weeks of non-payment past due date.</p>
</div>

<button class="accordion">How do I Create my Online Account?</button>
<div class="panel">
  <p>On the homepage or navigation bar click the "registration" button and follow the link.</p>
</div>

<button class="accordion">I Need to File an Auto Insurance Claim. Where Do I start?</button>
<div class="panel">
  <p>First, phone your DCI agent or local company representitive. Ask your agent how to proceed and what forms or documents will be needed to support your claim. Your company may require a "proof of loss" form, as well as documents relating to your claim, such as medical and auto repair bills and a copy of the police report.</p>
</div>

<button class="accordion">How Long Will it Take for my Property Damage Insurance Claim to be Settled?</button>
<div class="panel">
  <p>Typically at least 18-24 months to repair/replace their home and possessions after a large loss.</p>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>