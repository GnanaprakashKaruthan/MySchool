<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #4CAF50;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	padding-bottom: 640px;
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
	font-weight: bold;
    font-size: large;
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

	<form:form methodParam="LoginVO" action="/loginAction" method="post">
		<div class="container">
			<h2>Log into Your Profile</h2>
			<p>Please Login by entering your UserName and Password</p>
			<hr>
			
			<label for="email"><b>Email</b></label> 
			<input type="text" placeholder="Enter Email" name="email" required> 
			
			<label for="psw"><b>Password</b></label> 
			<input type="password" placeholder="Enter Password" name="password" required>
			
			<button type="submit" class="registerbtn">Login</button>
		</div>
		<hr>
<!-- 		<div class="container signin">
			<p>
				Don't have an account, click here to register? <a
					href="/forwardToregister">Register</a>.
			</p>
		</div> -->
	</form:form>
	<div class="container signin">
			<p>
				Back to <a	href="/">home</a>.
			</p>
		</div>
</body>
</html>