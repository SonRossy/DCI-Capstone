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

  <link rel="stylesheet" href="css/UserRegistration.css">
<svg xmlns="http://www.w3.org/2000/svg" style="display:none;">
    <defs>
        <symbol viewBox="0 0 60 60" id="icon-facebook">
            <path d="M25.8 46.3h6.7V30H37l.6-5.6h-5.1v-2.8c0-1.5.1-2.3 2.2-2.3h2.8v-5.6H33c-5.4 0-7.3 2.7-7.3 7.3v3.4h-3.4V30h3.4v16.3zM30 60C13.4 60 0 46.6 0 30S13.4 0 30 0s30 13.4 30 30-13.4 30-30 30z"/>
        </symbol>
        <symbol viewBox="0 0 60 60" id="icon-linkedin">
            <path d="M46.8 44.1V32.4c0-6.3-3.3-9.2-7.8-9.2-3.6 0-5.2 2-6.1 3.4v-2.9h-6.8c.1 1.9 0 20.4 0 20.4h6.8V32.7c0-.6 0-1.2.2-1.7.5-1.2 1.6-2.5 3.5-2.5 2.5 0 3.4 1.9 3.4 4.6V44l6.8.1zM19 20.9c2.4 0 3.8-1.6 3.8-3.5 0-2-1.5-3.5-3.8-3.5s-3.8 1.5-3.8 3.5 1.4 3.5 3.8 3.5zM30 60C13.4 60 0 46.6 0 30S13.4 0 30 0s30 13.4 30 30-13.4 30-30 30zm-7.6-15.9V23.7h-6.8v20.4h6.8z"/>
        </symbol>
        <symbol viewBox="0 0 60 60" id="icon-twitter">
              <path d="M34.2 18.3c-2.6 1-4.3 3.4-4.1 6.1l.1 1-1-.1c-3.8-.5-7.1-2.1-10-4.9L17.7 19l-.4 1c-.8 2.3-.3 4.7 1.3 6.3.8.9.6 1-.8.5-.5-.2-.9-.3-1-.2-.1.1.4 2.1.8 2.8.5 1.1 1.7 2.1 2.9 2.7l1 .5h-1.2c-1.2 0-1.2 0-1.1.5.4 1.4 2.1 2.8 3.9 3.5l1.3.4-1.1.7c-1.7 1-3.6 1.5-5.6 1.6-.9 0-1.7.1-1.7.2 0 .2 2.6 1.4 4 1.9 4.5 1.4 9.8.8 13.7-1.6 2.8-1.7 5.7-5 7-8.2.7-1.7 1.4-4.9 1.4-6.4 0-1 .1-1.1 1.2-2.3.7-.7 1.3-1.4 1.5-1.6.2-.4.2-.4-.9 0-1.8.6-2 .6-1.2-.4.6-.7 1.4-1.9 1.4-2.3 0-.1-.3 0-.7.2-.4.2-1.2.5-1.8.7l-1.1.4-1-.7c-.6-.4-1.4-.8-1.8-.9-.9-.4-2.6-.4-3.5 0zM30 60C13.4 60 0 46.6 0 30S13.4 0 30 0s30 13.4 30 30-13.4 30-30 30z"/>
        </symbol>
    </defs>
</svg>

<div class="hero">
    <header id="masthead" role="banner">
      <div class="container">
        <button class="hamburger hamburger--boring" type="button">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
          <span class="hamburger-label">Menu</span>
        </button>
      
      <a href="Home.html"><i class="fa fa-home" style="font-size:65px; color: #fff; float: right;opacity: 0.8;"></i> </a>     
        <nav id="site-nav" role="navigation">

          <div class="col">
            <h4>Need Insurance?</h4>
            <ul>
              <li><a href="shop.html">Shop Insurance</a></li>
              <li><a href="findagent.html">Find an Agent</a></li>
              <li><a href="PlanOption.html">Plan Options</a></li>
             
            </ul>            
          </div>
          <div class="col">
            <h4>Apply</h4>
            <ul>
              <li><a href="UserRegistration.html">Create an Account</a></li>
                <li><a href="ApplyingforInsurance.html">Apply</a></li>
                <li><a href="CapLogin.html">Login</a></li>
            </ul> 
          </div>
          <div class="col">
            <h4>About</h4>
            <ul>
              <li><a href="Claims.html">File a Claim</a></li>
              <li><a href="FAQ.html">FAQ</a></li>
              <li><a href="#">Join Us</a></li>
            </ul>             
          </div>
         
          <div class="col">
               
            <ul class="social">
           
              <li><a href="https://www.facebook.com/DCI-Corporation-303656553549618/?modal=admin_todo_tour"><svg title="Facebook"><use xlink:href="#icon-facebook"></use></svg></a></li>
              <li><a href="https://twitter.com/CorporationDci"><svg title="Twitter"><use xlink:href="#icon-twitter"></use></svg></a></li>
              <li><a href="https://www.linkedin.com/in/dci-corporation-dci-corporation-570593170/"><svg title="LinkedIn"><use xlink:href="#icon-linkedin"></use></svg></a></li>
            </ul>
          </div>
      </nav>
    </div>
<script>
    $(function() {
    $('body').addClass('js');
  
    var $hamburger = $('.hamburger'),
        $nav = $('#site-nav'),
        $masthead = $('#masthead');
  
    $hamburger.click(function() {
      $(this).toggleClass('is-active');
      $nav.toggleClass('is-active');
      $masthead.toggleClass('is-active');
      return false; 
    })
});
</script>
  </header>
</div>
  </head>
<body>

<div id="form-block">
  <div id="form-block--left">
    <div id="left-content">
      <h1>Log in:</h1>

 <form action="LogIn" method="post">
    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <input type="submit" class="button" value="SUBMIT">
  
</form>
    </div>
  </div>
  <div id="form-block--right"><img src="images/user-reg-img.png"/></div>
</div>

**Servlet Implementation 
/*

<%
	
	try{
		//getting message from LogIn.java wether log in was a succes or not
		String msg= session.getAttribute("msg").toString();
		out.print(msg);
		
	}catch(Exception e){
		e.getMessage();
	}
		
	%>

</body>
  <footer>
    
    <div class="footer__inner">
    <img id="imgg" src="images/DCItransparent.png">
    
            <span>
    <h3> Contact Us: </h3>
    <br> Make a claim or any help with customer care.<br><br>
    General fax: 1-877-280-5587 <br><br>

    <p> Address: Corporate Headquarters<br>
                DCI Corporation<br>
                1120 Main Street,<br>
                Hartford, CT 06103<br>
            
                860-291-8744</p>
</div>

   </footer>

<script>
    $(function() {

    var $body = $("body");
    var $window = $(window);
    var $footerInner = $(".footer__inner");
    var footerVisibleClass = "footer__inner--visible";
    var footerIsHidden = true;
    var footerTolerance = 150; //how many pixels from end to show the footer
    var togglePont;
    var windowHeight;
    
    $window.on("resize", function() {
        togglePont = $body.height() - footerTolerance;
        windowHeight = $window.height();
    }).trigger("resize");
    
    $window.on("scroll", onScroll);

    function onScroll() {
        
        var scrollBottom = windowHeight + $window.scrollTop();
        if (scrollBottom >= togglePont) {
            if (footerIsHidden) {
                footerIsHidden = false;
                $footerInner.addClass(footerVisibleClass);
            }
        } else {
            if (!footerIsHidden) {
                footerIsHidden = true;
                $footerInner.removeClass(footerVisibleClass);
            }
        }
        
    } //end onScroll
});
</script>
</html>
