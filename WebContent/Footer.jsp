<%--Author: Caroline Kops --%>

<footer>

    <div class="footer__inner">
    <img id="imgg" src="images/DCItransparent.png">
   
    <p style="font-size: 12px; width: 100%;text-align: right;padding-top: 119px;"> General fax: 1-877-280-5587<br>Address: Corporate Headquarters<br>
                DCI Corporation<br>
                1120 Main Street,<br>
                Hartford, CT 06103<br>         
                860-291-8744<br><br>
<a href="PrivacyPolicy.jsp">Privacy Policy</a></p>
</div>
 </footer>
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
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
