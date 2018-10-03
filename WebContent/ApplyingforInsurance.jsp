<html>

<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://www.thesoftwareguy.in/creating-responsive-multi-step-form-bootstrap-jquery/"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/unify.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script type="text/javascript" src="javascript/capstone.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
 <meta charset="UTF-8">
    <title>Apply for Insurance</title>
    
 <style>
.stepwizard-step p {
   margin-top: 10px;
}
.stepwizard-row {
   display: table-row;
}

.stepwizard {
   display: table;
   width: 100%;
   position: relative;
}

.stepwizard-step button[disabled] {
   opacity: 1 !important;
   filter: alpha(opacity=100) !important;
}

.stepwizard-row:before {
   top: 14px;
   bottom: 0;
   position: absolute;
   content: " ";
   width: 100%;
   height: 1px;
   background-color: #ccc;
   z-order: 0;

}

.stepwizard-step {
   display: table-cell;
   text-align: center;
   position: relative;
}

.btn-circle {
 width: 30px;
 height: 30px;
 text-align: center;
 padding: 6px 0;
 font-size: 12px;
 line-height: 1.428571429;
 border-radius: 15px;
}
.col-md-12{
margin: auto;
display: block;
float: unset;
width: 550px;
}
label {
 font-weight: bolder;
 font-size: large;
}
.radioDiv{
 margin:!10px ;
}
.inline{
 display: inline-block;
}
.inline + .inline{
 margin-left:10px;
}
.radio{
 color:#999;
 position:relative;
}
.radio span{
 position:relative;
  padding-left:20px;
}
.radio span:after{
 content:'';
 width:15px;
 height:15px;
 border:3px solid;
 position:absolute;
 left:0;
 top:1px;
 border-radius:100%;
 -ms-border-radius:100%;
 -moz-border-radius:100%;
 -webkit-border-radius:100%;
 box-sizing:border-box;
 -ms-box-sizing:border-box;
 -moz-box-sizing:border-box;
 -webkit-box-sizing:border-box;
}
.radio input[type="radio"]{
  cursor: pointer; 
 position:absolute;
 width:100%;
 height:100%;
 z-index: 1;
 opacity: 0;
 filter: alpha(opacity=0);
 -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"
}
.radio input[type="radio"]:checked + span{
 color:#17a2b8;  
}
.radio input[type="radio"]:checked + span:before{
   content:'';
 width:5px;
 height:5px;
 position:absolute;
 background:#17a2b8;
 left:5px;
 top:6px;
 border-radius:100%;
 -ms-border-radius:100%;
 -moz-border-radius:100%;
 -webkit-border-radius:100%;
}
.col-md-12{
		margin: auto;
		display: block;
		float: unset;
		width: 550px;
		margin-bottom: 5%;
}
label {
    font-weight: bolder;
    font-size: large;
}
.radioDiv{
  margin:25px ;
}
.inline{
  display: inline-block;
}
.inline + .inline{
  margin-left:10px;
}
.radio{
  color:#999;
  position:relative;
}
.radio span{
  position:relative;
   padding-left:20px;
}
.radio span:after{
  content:'';
  width:15px;
  height:15px;
  border:3px solid;
  position:absolute;
  left:0;
  top:1px;
  border-radius:100%;
  -ms-border-radius:100%;
  -moz-border-radius:100%;
  -webkit-border-radius:100%;
  box-sizing:border-box;
  -ms-box-sizing:border-box;
  -moz-box-sizing:border-box;
  -webkit-box-sizing:border-box;
}
.radio input[type="radio"]{
   cursor: pointer; 
  position:absolute;
  width:100%;
  height:100%;
  z-index: 1;
  opacity: 0;
  filter: alpha(opacity=0);
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"
}
.radio input[type="radio"]:checked + span{
  color:#17a2b8;  
}
.radio input[type="radio"]:checked + span:before{
    content:'';
  width:5px;
  height:5px;
  position:absolute;
  background:#17a2b8;
  left:5px;
  top:6px;
  border-radius:100%;
  -ms-border-radius:100%;
  -moz-border-radius:100%;
  -webkit-border-radius:100%;
}
.form-control{
	font-size:18px;;
}
.hero {
    height: 35%;
}
.footer__inner {
    height: 350px;
</style>

</head>
<body>
<%----  include header ----%>
<jsp:include page="/Header.jsp" />
<%----  include header ----%>

<div class="stepwizard" style="margin-top: 5%">
    <div class="stepwizard-row setup-panel">
        <div class="stepwizard-step">
            <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
            <p>Step 1</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
            <p>Step 2</p>
        </div>
        <div class="stepwizard-step">
            <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
            <p>Step 3</p>
        </div>
         <div class="stepwizard-step">
            <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
            <p>Step 4</p>
        </div>
    </div>
</div>
<form role="form" action="ApplicationForm" method ="post" style="margin-bottom: 3%">
    <div class="row setup-content" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 1</h3>
                <div class="form-group">
                    <label class="control-label">First Name</label>
                    <input  name="fname" maxlength="100" type="text" required="required" class="form-control" placeholder="Enter First Name"/><br>
					<label class="control-label">Middle Name</label>
                    <input name="mname"  maxlength="100" type="text" class="form-control rmvError" placeholder="Enter Middle Name"/><br>
                
                    <label class="control-label">Last Name</label>
                    <input name="lname"maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Last Name" />
                </div>
				 <label class="control-label">Telephone Number:</label>
                    <input name="tel" type="text" id="phone" maxlength="10" required="required" class="form-control" placeholder="(XXX)-XXX-XXXX" /><br>
				<div class="radioDiv">
						  <label  class="radio inline"> 
							  <input type="radio" name="sex" value="1">
							  <span> Male </span> 
						   </label>
						  <label class="radio inline"> 
							  <input type="radio" name="sex" value="2">
							  <span>Female </span> 
						  </label>
						  <label class="radio inline"> 
							  <input type="radio" name="sex" value="3">
							  <span>Prefer not to say </span> 
						  </label>
				</div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
		</div>
    </div>
    <div class="row setup-content" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 2</h3>
                <div class="form-group">
                    <label class="control-label"> Primary Address</label>
                    <input name="primaryaddress" maxlength="200" type="text" required="required" class="form-control" placeholder="Primary Address" />
					<label class="control-label"> Unit/Apartment Number</label>
                    <input name="aptnumber" style="width:50px" maxlength="10" type="text" required="required" class="form-control" placeholder="No." />
					<label class="control-label"> City</label>
                    <input name="city" maxlength="200" type="text" required="required" class="form-control" placeholder="City" />
					<label for="state" class="control-label">State</label>
	
							<select name="state" style="height:3.8rem" required="required" class="form-control selectDropState" placeholder="state" id="state">
								<option value="">N/A</option>
								<option value="AK">Alaska</option>
								<option value="AL">Alabama</option>
								<option value="AR">Arkansas</option>
								<option value="AZ">Arizona</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DC">District of Columbia</option>
								<option value="DE">Delaware</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="IA">Iowa</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="MA">Massachusetts</option>
								<option value="MD">Maryland</option>
								<option value="ME">Maine</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MO">Missouri</option>
								<option value="MS">Mississippi</option>
								<option value="MT">Montana</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="NE">Nebraska</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NV">Nevada</option>
								<option value="NY">New York</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="PR">Puerto Rico</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VA">Virginia</option>
								<option value="VT">Vermont</option>
								<option value="WA">Washington</option>
								<option value="WI">Wisconsin</option>
								<option value="WV">West Virginia</option>
								<option value="WY">Wyoming</option>
							</select>
	
					<label class="control-label">Country</label>
                    <input name="country" maxlength="200" type="text" required="required" class="form-control" placeholder="Country" />
					<label class="control-label">Zipcode</label>
                    <input name = "zip"style="width:100px" maxlength="5" type="text" required="required" class="form-control" placeholder="Zipcode" />
                </div>
                <div class="form-group">
					<label class="control-label">Mailing Address(If different than Primary Address)</label>
					<textarea name="mailingaddress" class="form-control" placeholder="Secondary Address (Optional)" ></textarea>
                    <!--input radioDivength="200" type="text" required="required" class="form-control" placeholder="Secondary Address(Optional)"/-->
                </div>
				<br>
                <button class="btn btn-default prevBtn btn-lg pull-left" type="button" >Prev</button>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-3">
        <div class="col-xs-12">
            <div class="col-md-12">
                <h3> Step 3</h3>
                <div class="form-group">
				<div>
					<label>Are you citizen of United States?</label>
					<label class="radio-inline"> 
					<input required="required" type="radio" name="survey1" id="Radios1" value="1"> 
					YES
				  </label>				 
				  <label class="radio-inline"> 
					<input required="required" type="radio" name="survey1" id="Radios2" value="0"> 
					NO 
				  </label>
				  <br>
				  <label for="state" class="control-label">Current Immigration Status(specify if not citizen  this option)</label>
	
							<select name="imstatus"style="height:3.8rem" required="required" class="form-control selectDropState" placeholder="status" id="state">
								<option value="0">N/A</option>
								<option value="1">Residential/Green card</option>
								<option value="2">Visitor</option>
								<option value="3">Student(F1/F2)</option>
							</select>
				</div>
				<br>
                    <label class="control-label">HOUSEHOLD MEMBERS </label>
                    <input name="householdmems" maxlength="200" type="text" required="required" class="form-control" placeholder="Enter your Total Number of Household" /><br>
					
				<label for="state" class="control-label">Marital Status</label>	
				<select name="marital" style="height:3.8rem" class="form-control selectDropState" placeholder="status">
								<option value="0">Single</option>
								<option value="1">Married</option>
								<option value="2">Divorced</option>
								<option value="3">Complicated</option>
				</select>
                </div>
				<br>
				<label for="Ethinicity" class="control-label">Please select your Ethinicity</label>	
				<select name="ethinicity" style="height:3.8rem" required="required" class="form-control" placeholder="Ethinicity">
								<option value="0">Prefer not to say</option>
								<option value="1">White</option>
								<option value="2">Black/African American</option>
								<option value="3">Hispanic/Latino</option>
								<option value="4">Asian</option>
								<option value="5">Native American</option>
								
				</select><br>
				<div>
					<label>Are you physically disabled?</label>
					<label class="radio-inline"> 
					<input required="required" type="radio" name="survey2" id="Radios1" value="1"> 
					YES
				  </label>				 
				  <label class="radio-inline"> 
					<input required="required" type="radio" name="survey2" id="Radios2" value="0"> 
					NO 
				  </label>
				</div><br>				
				<br>
                <button class="btn btn-default prevBtn btn-lg pull-left" type="button" >Prev</button>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-4">
        <div class="col-xs-12">
            <div class="col-md-12"> 
                <h3> Step 4</h3>
				<div class="form-group">
                    <label class="control-label">Profession</label>
                    <input name="job" maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Profession" /><br>
					<label class="control-label">Company Name</label>
                    <input name="compName" maxlength="20" type="text" required="required" class="form-control" placeholder="Enter Company Name" />
					<div>
						<br>
						<label>Are you retired Veteran</label>
						<label class="radio-inline"> 
						<input type="radio" name="survey" id="Radios1" value="1"> 
						YES
					  </label>				 
					  <label class="radio-inline"> 
						<input type="radio" name="survey" id="Radios2" value="0"> 
						NO 
					  </label>
				</div>
				<br>
                <label for="state" class="control-label">Annual Income</label>
	
							<select name="income" style="height:3.8rem" required="required" class="form-control selectDropState" placeholder="status" id="state">
								<option value="0">N/A</option>
								<option value="1">Less than 32000K</option>
								<option value="2">Greater than 32000K Less than 85000K</option>
								<option value="3">Above 85000K</option>
							</select>
							<br>
							 <label class="header">Please enter your Federal Tax ID:</label>
					<input name="taxid" type="text" id="taxID" class="form-control input-group" maxlength="9" placeholder="XXX XXX XXX" pattern="(\d{3}\.\d{2}\.\d{4}|\d{9})" title="Enter a Tax Identification Number in this format ex:'123456789'. Must contain nine digits." required /><br>
					 <label class="header">Please enter your Social Security number:</label>
					<input name="ssn" type="text" id="SSNArea" class="form-control input-group" maxlength="9" placeholder="XXX XX XXXX" pattern="(\d{3}-\d{2}-\d{4}|\d{9})" title="Enter a Social Security Number in this format ex:'123456789'. Must contain nine digits." required />
				
				</div>
            	
				<button class="btn btn-default prevBtn btn-lg pull-left" type="button" >Prev</button>
                <button class="btn btn-success btn-lg pull-right" type="submit">Finish!</button>    
            </div>
        </div>
    </div>
</form>
</div>

<%----  include footer ----%>
<jsp:include page="/Footer.jsp" />
<%----  include footer ----%>

</body>
</html>