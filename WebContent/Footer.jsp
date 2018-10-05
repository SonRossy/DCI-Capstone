<%--Author: Caroline Kops --%>

<footer>

    <div class="footer__inner">
    <img id="imgg" src="images/DCItransparent.png">
    
    <h3> Contact Us: </h3>
    <br> Make a claim or any help with customer care.<br><br>
    General fax: 1-877-280-5587 <br><br>

    <p> Address: Corporate Headquarters<br>
                DCI Corporation<br>
                1120 Main Street,<br>
                Hartford, CT 06103<br>         
                860-291-8744</p>
<a href="PrivacyPolicy.jsp">Privacy Policy</a>
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
