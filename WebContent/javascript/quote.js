$(document).ready(function () {
	
    $("#quoteFormButton").click(function(){
  //  	alert("Hello");
    	formData = $("#getQuote").serializeArray();
    	console.log(formData);
    	data = {};
    	
    	for( i = 0; i < formData.length; i++ ) {
    		if(formData[i].name == "lifestyle" || formData[i].name == "preCondition") {
    			if(data.hasOwnProperty(formData[i].name)) {
    				data[formData[i].name].push(formData[i].value);
    			}
    			else {
    				data[formData[i].name] = [formData[i].value];
    			}
    		}
    		else {
    			data[formData[i].name] = formData[i].value;
    		}
    	}
    	
    	console.log(data);
    	
    	$.post('/rest/calculatePremium' , data), function(data, status){
    		console.log(status);
    	}
    	
    	//send ajax post request to /rest/calculatePremium
    	
   // 	return $('getQuote'.serializeArray());
    	
    	
    } );
});
