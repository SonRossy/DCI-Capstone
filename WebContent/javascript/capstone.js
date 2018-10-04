$(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
            allWells = $('.setup-content'),
            allNextBtn = $('.nextBtn'),
            allPrevBtn = $('.prevBtn');

    allWells.hide();

    navListItems.click(function (e) {
        e.preventDefault();
        var $target = $($(this).attr('href')),
                $item = $(this);

        if (!$item.hasClass('disabled')) {
            navListItems.removeClass('btn-primary').addClass('btn-default');
            $item.addClass('btn-primary');
            allWells.hide();
            $target.show();
            $target.find('input:eq(0)').focus();
        }
    });

    allNextBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url'],input[type='radio']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        for(var i=0; i<curInputs.length; i++){
            if (!curInputs[i].validity.valid){
                isValid = false;
				$(curInputs[i]).closest(".radioDiv").addClass("has-error");
                $(curInputs[i]).closest(".form-group").addClass("has-error");
				$(curInputs[i]).closest(".rmvError").removeClass("has-error");
				
            }
        }

        if (isValid)
            nextStepWizard.removeAttr('disabled').trigger('click');
    });

    allPrevBtn.click(function(){
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            prevStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().prev().children("a");

        /* $(".form-group").removeClass("has-error"); */
        prevStepWizard.removeAttr('disabled').trigger('click');
    });

    $('div.setup-panel div a.btn-primary').trigger('click');
});

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

 
//Author: Noel Cortes
	//Function used to validate SSN and taxID
window.onload=function(){
	function validate(e) {
	//let taxID = document.getElementById("taxID").value;
	let target = e.target.value;
 	let patternReturn = /\d{3}-\d{2}-\d{4}|\d{9}/.test(target);
 	
	if (!patternReturn) {
		alert("The phone number you entered (" + target +
	              ") is not in the correct form. \n" +
	              "The correct form must contain ten digits. \n" +
	              "Please go back and fix your phone number");
	   return false;  	  
	}
	else {
		//alert("valid");
		return true;
	}}
	
	let taxID = document.getElementById("taxID");
	let ssn = document.getElementById("SSNArea");
	taxID.addEventListener('change', validate);
	ssn.addEventListener('change', validate);
	//Author: Son-Rossy Dorvil and Noel Cortes
	//Function used to validate phone number
	function chkPhone() {
		let myPhone = document.getElementById("phone").value;
	   	let patternReturn = /\d{3}-\d{3}-\d{4}|\d{10}/.test(myPhone);
	if (!patternReturn) {
		alert("The phone number you entered (" + myPhone +
	              ") is not in the correct form. \n" +
	              "The correct form must contain ten digits. \n" +
	              "Please go back and fix your phone number");
	       //myPhone.focus();
	       return false;  	  
	}
	else {
		//alert("valid");
		return true;
	}}
	
	let phone = document.getElementById("phone");
	phone.addEventListener('change', chkPhone);
}
 	