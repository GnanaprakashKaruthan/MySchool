<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/login.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<title>Login</title>
<jsp:include page="../header/title.jsp"></jsp:include>
<script src="/js/main.js"></script>
</head>
<body>
	<div class="centre-body">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<br> <br> <br>
		<p class="maths">Special Maths coaching on Calculus, Linear
			Algebra, Probability, Statistics, and Optimization</p>
		<img src="/images/slides/new/maths_practise.gif"> <br> <br>
		<br>
		<div class="container-login">
			<form:form methodParam="LoginVO" action="/loginAction" method="post" onsubmit="return validateEmail()" >
				<h2>Log in</h2>
				<span style="color: red">* </span>
				<span>All the fields are mandatory</span>
				<hr>

				<label for="email"><b>Email</b></label>
				<input type="text" placeholder="Enter your Email" name="email" id="email"
					required>
				<br>

				<label for="psw"><b>Password</b></label>
				<input type="password" placeholder="Enter your Password"
					name="password" required>
				<br>
				<input type="submit" value="Login" class="login-submit" >
				<p class="forgot-password">
					<a href="#">Forgot Password</a>
				</p>
			</form:form>
		</div>
		<br>
		<br>
		<br>
		<div class="footer-border">
			<p>
				Don't have an account? <a href="/register">Sign Up</a> here.
			</p>
			<jsp:include page="../header/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
