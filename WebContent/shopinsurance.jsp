
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
 /*
 * author Clarissa Mercado
 * Created the instyle CSS and the HTML content
 */
<style>
.page {
    font-family: Verdana,sans-serif;
    font-size: 15px;
    line-height: 1.5;
    
}

.center {
    text-align: center;
     display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;

}

hr { 
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    border-style: inset;
    border-width: 1px;
    border: 100%;
}

.header {
 
    align-items: "left";
    width: 50%;

}

#reference {
    display: block;
    width: auto; 
    padding: 8px;
    padding-top: 0px;
    padding-right: 8px;
    padding-bottom: 0px;
    padding-left: 8px;
    text-align: center!important;
    margin-top: 16px!important;
    background-image: burlywood;
    
}

.child {
    position: relative;
    display: inline-block;
    margin: 5%;
    background: #ccc;
    
}

.child > p {
    height: 60px
}

#information {
    height: auto;
    width: auto;
    background: url("http://www.advisorhqportal.com/wp-content/uploads/2018/06/Home-Comprehensive-Market-Solution.png");
    background-repeat: no-repeat;
    background-size: auto;
}

#information2 {
    width: auto;
    height: 600px;
    background-image: url("p2.png");
    background-size: cover;
    background-repeat: no-repeat;

}

.transbox {
    margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60);
  height: 400px;
}

transbox p {
  margin: 15%;
  font-weight: bold;
  color: #000000;  
}

#wordinformation2 {
    padding-top: 5%;
    padding-bottom: 15%;
    font-weight: bold;
}

#wordinformation {
    padding-bottom: 4%;
    color: white;
}

.extrabox {
    margin-top: 10%;
    color: black;
}

.buttons {
    display: inline;
    height: auto;
    width: auto;
}

.bottominfo{
    color: white;
    padding-top: 3%
}

.buttoncontainer {
    padding-top: 15%;
    padding-bottom: 15%;
    
}

.buttoncontainer2 {
    padding-top: 5%;
    padding-bottom: 15%;
    
}

.agentpic {
    border-style:inset;
    
}

.btn-action {
    box-shadow: 0 3px 0 0 rgba(0,0,0,.14);
    background-color: #5381ac;
    border-color: #396791;
    background-image: linear-gradient(to bottom,#5381ac,#396791);
    text-shadow: 0 -1px 0 rgba(0,0,0,.5);
    color: #fff;
}

.btn, .button {
    position: relative;
    letter-spacing: -.03em;
    min-height: 40px;
    border: 1px solid #ccc;
    border-radius: 4px;
    display: inline-block;
    text-decoration: none;
    background-image: #f3f3f3;

}

.w3-row-padding>.child {
    padding: 0 px;
    padding-top: 0px;
    padding-right: 8px;
    padding-bottom: 0px;
    padding-left: 8px;
}

.w3-card {
    box-shadow: 0 5px 10px 0 rgba(0,0,0,0.16), 0 5px 20px 0 rgba(0,0,0,0.12);
}

.w3-container {
    padding: 0.01em 60px;
}

.know {
    width: 25%;
    height: auto;
}

</style>
<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

   <div class="page">
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