<%--Author: Sasha Edwards --%>
<%--Author: Caroline Kops --%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
<script src="https://cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/unify.css">
    <title>Doctor Casualty Insurance</title>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />

<style type="text/css">
#screen1 {
    background-image: url("images/homepage.png");
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
    color: black;
    padding-left: 10%;
    padding-top: 20px;
    padding-bottom: 20px;
    font-size: 12px;
    align-content: left;
}


#screen2  {
    max-height: max-content;
    padding-top: 5%;
    padding-left: 20%;
    padding-right: 20%;
    padding-bottom: 5%;

}

#screen2 h3 {
    text-align: center;
    padding-top: 3%;
    padding-bottom: 1%;
    font-family: 'open-sans-bold', AvenirNext-Medium, sans-serif;
    color: grey;
    font-size: 23px;

}
#screen2 h3 {
	text-align:left;
	padding-top: 3%;
	padding-bottom: 1%;
	font-family: 'open-sans-bold', AvenirNext-Medium, sans-serif;
	color: grey;
	font-size: 23px;

}

.grid-container {
    width: 100%;
    height: auto;
    display: grid;
    grid-template-columns: auto auto auto;
    padding: 10px;
    margin-top: 10%%;
}

.grid-item {

    padding: 2%;
    text-align: left;
    align-items: center;
    font-size: 30px;
    color:black;
    text-align: left;
}

.grid-item img {
    padding-bottom: 8%;
    padding-top: 8%;
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
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
    background-color: #009ac9;
    color: white;
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
color:#8E93A9;
padding:5px;
width:20%;
}
#subject{
color: #8E93A9;
width:40%;

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


    <h3> OUR MISSION</h3>


    <p>Our mission is to be the number one insurance company provider that creates a win-win partnership with our customers and provide utmost care, timely respond and support.</p>




    <h1>Core values:</h1>


    <div class="grid-container">

        <div class="grid-item">

            <h3> People </h3>

            <img src="images/people.png"/>

            <p>Respect and trust our customers as well as our employees and satisfaction and positive workplace culture for our employees. </p>

        </div>


        <div class="grid-item">

            <h3> Planet </h3>

            <img src = "images/planet.png"/>

            <p>Be sustainable (leave less carbon foot print, less paper usage and recycle).</p>

        </div>

        <div class="grid-item">

            <h3> Confidentiality </h3>

            <img src= "images/confedentiality.png"></img>

            <p>Keep our files, records and conservation confidential.</p>
        </div>


        <div class="grid-item" >

            <h3> Partnership </h3>

            <img src= "images/partnership.png"></img>

            <p> Win and win situation for all</p>
        </div>


        <div class="grid-item">

            <h3> Integrity </h3>

            <img src= "images/integrity.png"></img>

            <p>Fact-finding and it is designed to help us better serve our customers,the quality of being honest and having strong moral principles and not lying, or, doing what you said you would do.</p>

        </div>

        <div class="grid-item">

            <h3> Support </h3>

            <img src= "images/integrity.png"></img>

            <p>We pride ourselves on running an honest, customer centered business.</p>

        </div>

</section>
<section id="screen3">

<h3 style="text-align:center; color:#292B31">DCI is available 24 hours a day, 7 days a week</h3>
 <br> <h4 style="text-align:center; color:#292B31">Contact us through our email, by phone or fill in the below form.</h4>
<br>
<div class="container">
  <form action="action" style="color:#8E93A9">

    <label for="fname">First Name</label>
    <br>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">
    <br>
    <label for="lname">Last Name</label>
    <br>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">
    <br>
    <label for="subject">Subject</label>
    <br>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
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