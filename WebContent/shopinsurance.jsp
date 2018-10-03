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
   	<title>Shop Insurance</title>
  </head>

<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

   <div class="page">
      <div class="header"> <img src="https://trello-attachments.s3.amazonaws.com/5b647cf3aa10da1a34d69e66/5b6da76ba1a5cd45be14e89d/a88e02e091b0a6290531c1ec82157084/DCI.jpg"
                alt="DCI Casualty Insurance" width="200" height="206">
      </div>
        <hr>
        <div class="maincontainer">
            <div id="information"class="center">
                <div id="wordinformation">
                    <p><h1> Shop Insurance </h1></p>
                    <p><h4> Get a quote instantly and save 18%!</h4></p>
                    <p><i>Select a Product to Start an Insurance Quote</i></p>
                </div>
                <div class="buttons">
                    <button type="button"><img src="https://cdn3.iconfinder.com/data/icons/car-icons-front-views/480/Sports_Car_Front_View-512.png"
                            title="Auto" alt="Pic Loading..." height="110px" width="130px" /><br>AUTO</button></button>

                    <button type="button"><img src="https://image.flaticon.com/icons/png/512/25/25694.png" title="Auto"
                            alt="Pic Loading..." height="110px" width="130px" /><br>HOME</button></button>

                    <button type="button"><img src="https://cdn0.iconfinder.com/data/icons/buildings-8/512/home_hotel_house_city_buildings_real_estate_office_building_v2-512.png"
                            title="Auto" alt="Pic Loading..." height="110px" width="130px" /><br>CONDO</button></button>

                    <button type="button"><img src="https://cdn.iconscout.com/public/images/icon/premium/png-512/rent-key-rental-leasing-319f8937af4612ff-512x512.png"
                            title="Auto" alt="Pic Loading..." height="110px" width="130px" /><br>RENTERS</button></button>

                    <button type="button"><img src="https://cdn3.iconfinder.com/data/icons/family-5/512/family_parents_kids_children-512.png"
                            title="Auto" alt="Pic Loading..." height="110px" width="130px" /><br>LIFE</button></button>
                </div>
                <footer class="bottominfo">
                    <p>For more information contact us.</p>
                    <a href="https://www.w3schools.com/html/html_images.asp">Contact Us</a>
                
                </footer>
            </div>
            <hr>
            <div id="reference" class="center">
                <div class="child" id="manage">
                    <div class="w3-card w3-container" style="min-height:260px;min-width:200px" >
                        <p><h4> Manage Your Policies</h4></p>
                        <div class="buttoncontainer">
                            <button class="button btn btn-action" type="submit"> Log In
                            </button>
                        </div>
                        <a href="https://www.w3schools.com/html/html_images.asp">Create an Account</a>
                    </div>
                </div>
                <div class="child" id="claim">
                    <div class="w3-card w3-container" style="min-height:260px;min-width:200px">
                        <p><h4>Claims Support </h4></p>
                        <div class="buttoncontainer">
                            <button class="button btn btn-action" type="submit"> File a Claim
                            </button>
                        </div>
                        <a href="https://www.w3schools.com/html/html_images.asp"> Track a Claim </a>
                    </div>
                </div>
                <div class="child" id="agent">
                    <div class="w3-card w3-container" style="min-height:260px;min-width:200px">
                        <p><h4>Find a Local Agent </h4></p>
                        <div class="buttoncontainer">
                            <form action="" target="_blank">
                                <input type="text" name="agent" placeholder="Zipcode">
                                <input class="button btn btn-action" type="submit" value="Go">
                
                            </form>
                        </div>
                        <a href="https://www.w3schools.com/html/html_images.asp">Search by Agent Name</a>
                    </div>
                </div>

            </div>
            <hr>
            <div id="know">
                <p><h1 class="center"> Find out Which Insurance YOU Need </h1></p>
                <p><h3>Auto</h3></p>
                    <dl>
                        <dt>What comes standard: 
                        The coverage you need</dt>
                        <dd>- Bodily Injury Liability</dd>
                        <dd>- Property Damage</dd>
                        <dd>- Medical Payments</dd>
                        <br>
                        <dd>Benefits:</dd>
                            <dd>        12-month rate guarantee | 24/7 customer service | Lifetime Repair Guarantee</dd>
                    </dl>
                    <dl>
                        <dt>Add-on protection & coverage
                        For more peace of mind</dt>
                        <dd>- Better Car Replacement</dd>
                        <dd>- Towing & Labor</dd>
                        <dd>- Rental Car Coverage</dd>
                        <br>
                        <dd>Earned Benefits:</dd>
                        <dd>Accident Forgiveness1 | New Car Replacement™</dd>
                    </dl>
                <p><h3>Home</h3></p>
                    <dl></dl>
                <p><h3>Condo</h3></p>
                    <p></p>
                <p><h3>Renters</h3></p>
                    <p></p>
                <p><h3>Life</h3></p>
                    <p></p>
                
            </div>
        </div>
        <hr>
    </div>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>
</body>

</html>