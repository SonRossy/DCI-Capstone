<%--Author: Sasha Edwards --%>
<%--Author: Caroline Kops --%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/unify.css">
    <title>Doctor Casualty Insurance</title>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />

<style type="text/css">
#screen1 {
    background-image: url("images/drbaby.png");
    background-size: cover;
    max-height: max-content;
}

#screen1 button {
    font-family: 'open-sans-bold', AvenirNext-Medium, sans-serif;
    margin-top: 28%;
    margin-right: 60%;
    margin-left: 10%;
    font-size: 2rem;
    padding: 1.75rem 3.25rem;
    background-color: #495C70;
    border: 1px solid transparent;
    color: #ffffff;
    font-weight: 300;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}


#screen1 button:hover {
    background-color: #ffffff;
    color: #495C70;
    border-color: #ffffff;
}


#screen1 p {
    padding-left: 10%;
    padding-top: 20px;
    padding-bottom: 20px;
    font-size: 12px;
    align-content: left;
}


#screen2  {
    max-height: max-content;
    padding-top: 5%;
    padding-left: 15%;
    padding-right: 15%;
    padding-bottom: 5%;

}

#screen2 h3 {
    text-align: center;
    padding-top: 3%;
    padding-bottom: 3%;
    font-family: 'open-sans-bold', AvenirNext-Medium, sans-serif;
    color: #495C70;
    font-size: 23px;

}

.grid-container {
    width: 100%;
    height: auto;
    grid-template-columns: auto auto auto;
    margin-top: 7%;
    margin-bottom: 9%;
    display: inline-grid;
}
.grid-container p{
margin:auto;
}
.grid-item {

    padding: 4%;
    text-align: left;
    align-items: center;
    font-size: 30px;
    text-align: left; 
}

.grid-item img {
    padding-bottom: 8%;
    padding-top: 8%;
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50px;
    height: 50px;
}

#screen3 {
    max-height: max-content;
    padding-top: 5%;
    padding-left: 5%;
    background: #495C70;
    padding-bottom: 2%;
}
input[type=submit] {
    background-color: #8E93A9;
    color: #292B31;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    
}
#screen3 img {
    padding-right: 5%;
    width: 100px;
    display: inline-block;
    float: right;
}

#fname, #lname{
color:#fff;

padding:10px;


}
#subject{
color: #8E93A9;
padding: 10px;
width: -webkit-fill-available;

}
</style>
</head>
<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>
<section id="screen1">

    <a href="PlanOption.html">
        <button id="button" type="button"> APPLY TODAY </button> </a>
        
    <p> <br> <br><br></p>

    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>

    <script>
        window.onscroll = function() {myFunction()};

        var topnav= document.getElementById("myTopnav");
        var sticky = topnav.offsetTop;

        function myFunction() {
            if (window.pageYOffset > sticky) {
                topnav.classList.add("sticky");
            } else {
                topnav.classList.remove("sticky");
            }
        }
    </script>


</section>


<section id="screen2">

    <h3>ABOUT US</h3>


    <p>Our story began almost a decade ago in 2008 after our founder Mr Peter Adams parents died in an accident due to texting and driving criminally negligence by the other driver.
        He had a difficult time getting his insurance taken care in a timely manner.
        So, he founded Doctor Casualty Insurance to prevent heartaches for other people.
        Today, we are one of the best customer focused insurance company in Connecticut according to Connecticut Times Journal 2016. </p>

    <br>


    <p> We employ more than 100 worker and we pride ourselves on its commitment to employees strong retention rate.
        With 60 percent of our employees staying with the company for five or more years, and more than 32 percent for at least 8 years.
        Our company is known for its exceptional customer service and its continued commitment to giving back to the communities it serves. </p>

	<br>
    <h3> OUR MISSION</h3>


    <p>Our mission is to be the number one insurance company provider that creates a win-win partnership with our customers and provide utmost care, timely respond and support.</p>
	<br>
	
    <h2 style="text-align: center;">DCI's core values</h2>


    <div class="grid-container">

        <div class="grid-item">

            <h3> People </h3>

            <img src="images/people.png"/>

            <p>Respect and trust is essential for our business's success. The satisfaction of our customers, as well as our own employees, are of the utmost 
             importance. A positive experience for all is one of the core values of the Doctor Casualty Insurance Corporation. </p>

        </div>


        <div class="grid-item">

            <h3> Planet </h3>

            <img src = "images/planet.png"/>

            <p>DCI is committed to leaving a smaller carbon footprint and running an ethical, sustainable business.
            We emphasize health, not just of people, but of our planet as well.</p>

        </div>

        <div class="grid-item">

            <h3 style="margin-top: -4px;"> Confidentiality </h3>

            <img src= "images/confedentiality.png"></img>

            <p>The nature of health insurance requires strict privacy policies and inpenetrable firewalls. 
            Our talented team of cyber security analysts ensure your files, records, and any personal information is confidential.</p>
        </div>


        <div class="grid-item" >

            <h3> Partnership </h3>

            <img src= "images/partnership.png"></img>

            <p> We partner with small, local businesses in the New England area to help them grow and succeed.  Small business as are the 
            life blood of a successful economy, and we offer discounts and benefits in order to help the businesses that make our area great.</p>
        </div>


        <div class="grid-item">

            <h3> Assistance </h3>

            <img src= "images/support.png"></img>

            <p>We ensure constant availability of customer support and assistance.</p>

        </div>

        <div class="grid-item">

     
            <h3> Integrity </h3>

            <img src= "images/integrity.png"></img>

            <p>Our business is built off of the principle of integrity. Unlike other insurance companies, what we say is what we mean.
            If any client ever feels we are in violation of our strict integrity policy, please contact our 24/7 customer hotline, or 
            send us a message via the contact form below.</p>

        </div>

</section>
<section id="screen3">

<h4 style="color: #fff; text-transform: uppercase;font-weight: 100;"> DCI is available 24 hours a day, 7 days a week
 <br> Contact us through our email, by phone or fill in the below form.</h4>
<br>
<div class="container">
  <form action="action" style="color:#fff">

    <label for="fname" style="margin-left: -30px;">First Name</label>
    <br>
    <input type="text" id="fname" name="firstname" placeholder="first name">
    <br>
    <label for="lname" style="margin-left: -30px;">Last Name</label>
    <br>
    <input type="text" id="lname" name="lastname" placeholder="last name">
    <br>
    <label for="subject" style="margin-left: -30px;"> Subject</label>
    <br>
    <textarea id="subject" name="subject" placeholder="type here..." style="height:200px";padding: 10px;></textarea>
    <br>
    <input type="submit" value="Submit">
  </form>
</div>
</section>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>
</html>