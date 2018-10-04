<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<?xml version="1.0" encoding="utf-8"?>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
   <script src="https://cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
   <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
   <link rel="stylesheet" type="text/css" href="css/unify.css">
 	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
 	   <title>Find an Agent</title>
<style type="text/css">
#northeast{
 float:left;
    position: relative;
    padding-left: 50%;
    padding-top: 10%;
    overflow: auto;
    display: inline-block;
}

.employees{
    width: 100%
    height:40%;
}
path:hover, circle:hover {
stroke: #6597b5 !important;
  stroke-width:1px;
  stroke-linejoin: round;
  fill: #6597b5 !important;
  cursor: pointer;
}

#info-box{
 display: none;
  position: absolute;
  top: 0px;
  left: 0px;
  z-index: 1;
  color: #292B31;
  background-color: #ffffff;
  border: 2px solid #292B31;
  border-radius: 5px;
  padding: 5px;
  font-family: arial;
}

.title{
    
    padding: 5%;
    height: 10%;
    z-index: -1;
    font-size: 50px;
    color: #8E93A9;
    position: absolute;
    text-align: left;

}

#reference {
   
    width: auto; 
    padding: 8px;
    padding-top: 0px;
    padding-right: 8px;
    padding-bottom: 0px;
    padding-left: 8px;
    text-align: center!important;
    margin-top: 16px!important;
}
.child {
    position: relative;
    display: inline-block;
    margin: 5%;
    background: #ccc;
   
}
.child > p {
    height: 50px
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
    box-shadow: 0 5px 10px 0 rgba(0,0,0,0.16), 0 5px 10px 0 rgba(0,0,0,0.12);
}
.w3-container {
     min-height:210px;
     min-width:150px;
    padding: 0.01em 60px;
}
</style>
</head>

<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

 <div class="title">Our Agents and Locations
    <p><br>DCI is a New England based company with locations in <br>Maine, Vermont, New Hampshire, Massachusetts, Connecticut,<br> and New York.
     Below is an interactive map showing our<br> locations by state.
        <br> <br>Take a look to find your nearest location!</p>
 </div>
 <div id="info-box"></div>
 <svg version="1.0" id="northeast" preserveAspectRatio="xMinYMin meet"xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
     width="375px" height="600px" viewBox="0 0 400 600" enable-background="new 0 0 400 600" xml:space="preserve"> 


<path id="RI" fill="#8E93A9" data-info="<div>Rhode Island Branches:</div><div>Providence, RI Branch</div><div>Newport, RI Branch</div><div>Warwick, RI Branch</div>"stroke="#292B31" d="M191.819,522.99l-1.684-14.916l-2.818-15.489l-5.916-20.934l20.001-5.445
    l5.632,4.012l11.834,15.49l10.137,15.771l-10.144,5.453l-4.509-0.577l-3.942,6.312l-8.45,6.885L191.819,522.99z"/> 

<path id="CT" fill="#8E93A9" data-info="<div>Connecticut Branches:</div><div>Hartford, CT Branch</div><div>Middletown, CT Branch</div><div>Canton, CT Branch</div><div>New London, CT Branch</div>"stroke="#292B31" d="M193.509,522.99l-3.373-14.916l-2.818-15.489l-5.632-21.22l-18.027,4.019
    L87.6,492.299l2.255,11.76l5.069,25.809v28.679l-3.943,8.028l6.386,7.48l17.268-12.063l12.393-11.471l6.763-7.457l2.819,2.292
    l9.576-5.157l18.024-4.021L193.509,522.99z"/>


<path id="MA" fill="#8E93A9" data-info="<div>Massachusetts Branches:</div><div>Boston, MA Branch</div><div>Framingham, MA Branch</div><div>Salem, MA Branch</div>"stroke="#292B31" d="M282.103,501.803l7.568-2.434l1.594-6.084l3.585,0.406l3.586,8.111l-4.383,1.62
    l-13.545,0.406L282.103,501.803z M249.436,504.642l7.969-9.331h5.578l6.371,5.272l-8.364,3.652l-7.57,3.648L249.436,504.642z
     M128.163,426.631l60.847-14.912l7.884-2.296l7.325-11.471l13.022-5.897l10.067,15.655l-8.447,18.351l-1.129,5.162l6.761,9.178
    l3.945-2.866h6.195l7.887,9.174l13.523,21.225l12.393,1.719l7.889-3.442l6.195-6.308l-2.815-9.75l-7.325-5.739l-5.069,2.873
    l-3.381-4.593l1.691-1.719l7.321-0.573l6.198,2.866l6.762,8.604l3.379,10.322l1.126,8.605l-14.646,5.161l-13.522,6.881
    l-13.521,16.063l-6.761,5.158v-3.438l8.451-5.165l1.689-6.306l-2.815-10.896l-10.141,5.159l-2.819,5.165l1.693,8.027l-9.575,5.158
    l-9.573-16.058l-11.834-15.49l-5.632-4.012l-20.001,5.445l-17.743,3.732L87.6,492.299l-3.38-20.361l2.254-37.563l18.027-3.158
    L128.163,426.631"/>

<path id="ME" fill="#8E93A9" data-info="<div>Maine Branches:</div><div>Portland, ME Branch</div><div>Freeport, ME Branch</div>"stroke="#292B31" d="M363.083,159.365l6.763,7.454l7.887,13.193v6.881l-7.324,16.635l-6.762,2.292
    l-11.83,10.897l-16.901,19.501c0,0-2.252,0-4.506,0c-2.255,0-3.383-7.458-3.383-7.458l-6.194,0.573l-3.383,5.165l-8.45,5.159
    l-3.38,5.165l5.635,5.158l-1.691,2.297l-1.689,9.75l-6.761-0.573v-5.735l-1.128-4.588l-5.068,1.147l-6.198-11.471l-7.325,4.588
    l4.51,5.163l1.126,4.016l-2.819,4.585l1.131,10.897l0.563,5.738l-5.636,9.177l-10.141,1.72L269,297.015l-18.591,10.897l-4.509,1.72
    l-5.632-5.159l-10.703,12.616l3.378,11.471l-5.07,4.589l-0.564,15.485l-5.494,27.038l-8.581-4.102l-1.69-10.896l-13.521-4.016
    l-1.128-9.751l-25.353-83.163l-16.607-52.418l8.511-1.223l5.274,1.456v-9.177l2.816-19.5l9.015-16.636l5.07-14.336l-6.761-8.604
    v-21.221l2.819-3.442l2.815-9.749l-0.562-5.162l-0.564-17.208l6.196-17.207l10.142-31.544l7.321-14.912h4.51l4.505,0.573v4.016
    l4.509,8.029l9.577,2.293l2.815-2.867v-3.442l14.083-10.324l6.198-6.308l5.073,0.573l20.843,8.603l6.762,3.443l31.547,106.104
    h20.846l2.818,6.884l0.563,17.202l10.141,8.031h2.815l0.564-1.72l-1.69-4.012L363.083,159.365z M290.137,266.324l5.354-5.452
    l4.787,3.732l1.974,8.601l-5.915,3.156L290.137,266.324z M313.518,245.39l6.199,6.595c0,0,4.504,0.287,4.504-0.863
    c0-1.147,0.847-7.165,0.847-7.165l3.1-2.872l-2.815-6.305l-7.045,2.579L313.518,245.39z"/>
<path id="NH" fill="#8E93A9" data-info="<div>New Hampshire Branches:</div><div>Manchester, NH Branch</div><div>Durham, NH Branch</div>"stroke="#292B31" d="M217.244,391.914l1.05-5.425l3.8-11.677l-8.86-3.242l-1.69-10.896l-13.521-4.016
    l-1.128-9.751l-25.353-83.163l-16.035-51.599l-3.124-0.013l-2.254,5.731l-2.252-1.719l-3.38-3.439l-5.071,6.881l-3.333,19.464
    l1.086,20.104l6.76,9.75v14.339l-12.957,14.336l-9.014,4.019v4.012l3.941,6.312v30.398l-2.815,32.689l-0.564,17.206l3.38,4.589
    l-0.561,16.058l-1.691,6.309l5.071,7.171l60.282-14.625l7.884-2.296l7.325-11.471L217.244,391.914z"/>
<path id="VT" fill="#8E93A9" data-info="<div>Vermont Branch:</div><div>Burlington, VT Branch</div>" stroke="#292B31" d="M87.036,435.235L84.22,415.16l-10.703-39.001l-2.253-1.147l-10.144-4.588
    l2.819-10.324l-2.819-7.454l-9.01-16.063l3.378-13.762l-2.815-18.355l-8.451-22.94l-2.81-17.468l94.637-25.546l1.129,20.644
    l6.76,9.75v14.339l-12.957,14.336l-9.014,4.019v4.012l3.941,6.312v30.398l-2.815,32.689l-0.564,17.206l3.38,4.589l-0.561,16.058
    l-1.691,6.309l5.071,7.171l-24.227,4.873L87.036,435.235z"/>
<path id="NY" fill="#8E93A9" data-info="<div>New York Branch:</div><div>New York, NY Branch</div><div>Saratoga, NY Branch</div>" stroke="#292B31" d="M31.826,560.266l-3.942-3.438l-9.015-0.577l-7.889-6.881L2.53,530.441l-10.47-3.3
    l-8.121-7.597l-64.787,14.339l-149.857,30.971l-30.988,5.162l-2.573-24.56l9.328-6.409l4.508-4.015l3.379-5.731l6.198-4.02
    l6.762-6.309l1.689-5.734l7.325-9.75l3.942-3.439l-0.563-3.442l-4.509-10.899l-6.194-0.574l-6.761-21.794l10.14-6.308l15.213-5.161
    l14.082-4.586l11.268-1.723l21.974-0.577l6.762,4.593l5.631,0.573l7.324-4.589l9.014-4.016l18.028-1.72l7.324-6.312l6.195-11.47
    l5.635-6.882h7.325l6.757-4.016l0.566-8.03l-5.072-7.455l-1.126-5.161l3.941-7.459v-5.158h-6.194l-6.198-2.869l-2.815-4.015
    l-0.563-9.179l20.28-19.5l2.252-2.866l5.071-10.323l10.141-16.06l9.578-13.192l7.322-8.601l8.417-6.478l10.736-4.422l19.159-4.585
    l11.267,0.573l15.775-5.162l26.362-7.348l1.813,17.668l8.451,22.94l2.815,18.355l-3.378,13.762l9.01,16.063l2.819,7.454
    l-2.819,10.324l10.144,4.588l2.253,1.147L84.22,415.16l1.69,18.353l-1.69,38.425l2.816,19.501l2.819,12.62l5.069,25.809v28.679
    l-3.943,8.028l6.409,7.071l-0.783,5.552l-6.763,6.309l1.129,4.588l4.506-1.146l5.073-4.589l7.887-9.179l3.943-2.292l5.635,2.292
    l7.884,0.574l27.606-13.763l10.144-9.751l4.504-5.165l14.649,5.739l-11.832,12.616l-13.521,10.323l-24.79,18.928l-9.013,3.439
    l-20.281,6.884l-14.082,4.013l-5.282-1.887l-2.037-11.879l1.69-9.751l-0.564-7.454l-9.015-4.02l-15.775-3.439l-13.519-4.015
    L31.826,560.266z"/>
<path id="NJ" fill="#292B31" data-info="<div>No NJ Branches</div>"stroke="#292B31" d="M31.826,560.266l-7.322,8.604v10.896l-6.761,10.897l-0.564,5.736l4.506,4.588
    l-0.564,8.604l-7.887,4.013l2.819,9.751l0.563,4.015l9.578,1.149l3.378,9.176l12.395,8.604l8.451,5.734v2.867L39.15,665.796
    l-5.635,8.031l-5.07,9.749l-7.887,4.589l-4.226,2.583l-0.847,4.299l-2.119,9.25l3.806,7.962l11.267,10.324l16.901,8.026
    l14.084,2.297l0.562,5.162l-2.815,3.439l1.126,9.749h2.815l7.325-8.6l2.819-17.205l9.579-14.343l10.703-22.941l3.942-19.5
    l-2.252-4.013l-0.564-33.266l-5.635-12.048l-3.942,2.872l-9.577,1.147l-1.69-1.72l3.942-3.446l7.325-6.882l0.22-3.882l-1.34-12.179
    l1.69-9.751l-0.564-7.454l-9.015-4.02l-15.775-3.439l-13.519-4.015L31.826,560.266z"/>
<path id="PA" fill="#292B31"  data-info="<div>No PA Branches</div>"stroke="#8E93A9" d="M16.616,690.462l3.943-2.297l7.887-4.589l5.07-9.749l5.635-8.031l11.267-10.896
    v-2.867l-8.451-5.734l-12.395-8.604l-3.378-9.176l-9.578-1.149l-0.563-4.015l-2.819-9.751l7.887-4.013l0.564-8.604l-4.506-4.588
    l0.564-5.736l6.761-10.897v-10.896l8.167-8.604l-4.788-3.438l-9.015-0.577l-7.889-6.881L2.53,530.441l-10.47-3.3l-8.121-7.597
    l-64.787,14.339l-149.857,30.971l-30.988,5.162l-1.727-25.133l-19.125,19.974l-4.505,1.72l-14.646,10.677l10.144,67.895
    l5.881,38.143l12.447,68.336l16.139-2.662l41.622-5.331l132.171-27.196l51.847-10.018l28.924-5.755l4.489-4.473l7.325-5.73H16.616z"
    />
<path id="MD" fill="#292B31"  data-info="<div>No MD Branches</div>"stroke="#8E93A9" d="M61.68,787.967l-21.404,4.585l-17.465,0.574l-5.632-22.371l-7.325-34.413
    l-7.887-20.073l-4.489-15.604l-28.924,5.755l-51.847,10.018l-130.516,26.788l3.943,17.782l3.382,20.074l1.126-1.146l7.325-8.604
    l7.888-10.898l8.447-0.571l5.072-5.166l6.198-9.177l4.505,2.296l10.141-1.147l9.014-7.454l6.995-5.158l6.432-1.72l5.729,4.01
    l10.14,5.162l6.762,6.308l4.226,5.448l14.366,6.024v10.324l19.154,4.586l6.761,4.588l3.379-6.882l7.887,5.736l-5.068,11.469
    l-1.126,9.751l-6.199,9.174v7.457l2.253,6.312l17.648,4.81l15.022-0.219l10.703,3.44l7.325,1.147l3.383-7.459l-5.073-7.454v-6.308
    l-8.451-7.458l-7.322-19.502l4.506-18.924l-0.563-7.454l-4.509-4.592c0,0,5.071-5.731,5.071-8.028c0-2.295,1.689-7.454,1.689-7.454
    l6.761-4.592l6.759-5.732l1.691,3.438l-5.071,5.74l-4.505,13.188l1.126,4.013l6.199,1.149l1.69,19.497l-7.325,3.445l1.126,12.616
    l1.689-0.571l3.945-6.886l5.631,6.312l-5.631,4.585l-1.126,12.046l9.011,12.045l13.522,1.723l5.631-2.87l11.27,18.353l6.199,1.723
    v12.62l-7.89,17.201l-1.69,24.666l5.071,12.042l5.069,0.574l6.761-14.911l2.816-12.62l0.567-25.232l10.703-17.209l7.325-24.66
    V787.967z M4.507,822.657l3.941,8.89l0.567,6.312l3.942,6.596c0,0,3.099-3.156,3.099-4.302c0-1.147-2.536-10.896-2.536-10.896
    l-2.537-8.318L4.507,822.657z"/>
<script>

$("path, circle").hover(function(e) {
  $('#info-box').css('display','block');
  $('#info-box').html($(this).data('info'));
});

$("path, circle").mouseleave(function(e) {
  $('#info-box').css('display','none');
});

$(document).mousemove(function(e) {
  $('#info-box').css('top',e.pageY-$('#info-box').height()-30);
  $('#info-box').css('left',e.pageX-($('#info-box').width())/2);
}).mouseover();


</script>
</svg>
<div class="transbox">
<div id="insidebox" >

</div>
 </div>
 <div class="employees"> 
        <div class="child" id="manage">
                    <div class="w3-card w3-container">
                        <p>
                            <h4> Sasha Edwards</h4>
                        </p>
                        <div class="agentpic">
                            <img src="images/Picture2.png" alt="Sasha" style width="200" height="250">
                        </div>
                        <div class="distance">
                            <p>Distance: 0.5 Miles <br> 5 Star Rating</p>
                            <a href="#">942 Main St 2nd floor, <br> Hartford, CT 06103</a>
                        </div>
                        <div class="buttoncontainer2">
                            <button class="button btn btn-action" type="submit"> Contact Me
                            </button>
                        </div>
                    </div>
                </div>
                <div class="child" id="claim">
                    <div class="w3-card w3-container">
                        <p>
                            <h4>Caroline Kops </h4>
                        </p>
                        <div class="agentpic">
                            <img src="images/Caroline1.PNG" alt="Caroline" width="200" height="250" ;>
                        </div>
                        <div class="distance">
                            <p>Distance: 0.5 Miles <br> 5 Star Rating</p>
                            <a href="#">942 Main St 2nd floor, <br> Hartford, CT 06103</a>
                        </div>
                        <div class="buttoncontainer2">
                            <button class="button btn btn-action" type="submit"> Contact Me
                            </button>
                        </div>
                    </div>
                </div>
                <div class="child" id="agent">
                    <div class="w3-card w3-container">
                        <p>
                            <h4>Reeta Ale Magar </h4>
                        </p>
                        <div class="agentpic">
                            <img src="images/Reeta1.jpg" alt="Reeta" width="200" height="250" ;>
                        </div>
                        <div class="distance">
                            <p>Distance: 0.5 Miles <br> 5 Star Rating</p>
                            <a href="#">942 Main St 2nd floor, <br> Hartford, CT 06103</a>
                        </div>
                        <div class="buttoncontainer2">
                            <button class="button btn btn-action" type="submit"> Contact Me
                            </button>
                        </div>
                    </div>
                </div>            
            <hr>     
     </div>
<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>      

</body>

</html>