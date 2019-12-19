<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: black;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
</head>
<body>

			<label for="fname"><b>First Name</b></label> 
			<input type="text" placeholder="Enter First Name" name="firstName" required> 
			
			<label for="lname"><b>Last Name</b></label>
			<input type="text" placeholder="Enter Last Name" name="lastName" required> 
			
			<!-- <label for="dateOfBirth"><b>DOB</b> </label> 
			<input type="text" placeholder="Date Of Birth" name="dateOfBirth" required> -->
			
			<label for="addressLine1"><b>Door No.</b></label>
			<input type="text" placeholder="Enter Door No." name="addressLine1" required>
			
			<label for="addressLine2"><b>Street Name</b></label>
			<input type="text" placeholder="Enter Street Name" name="addressLine2" required>
			
			<label for="addressLine3"><b>Village</b></label>
			<input type="text" placeholder="Enter Vllage Name" name="addressLine3" required>
			
			<label for="addressLine4"><b>Land Mark</b></label>
			<input type="text" placeholder="Enter land mark" name="addressLine4">
			
			<label for="addressLine5"><b>District</b></label>
			<input type="text" placeholder="Enter District Name" name="addressLine5" required>
			
			<label for="zipcode"><b>Pin Code</b></label>
			<input type="text" placeholder="Enter Pin Code" name="zipcode" required>
			
</body>

</html>