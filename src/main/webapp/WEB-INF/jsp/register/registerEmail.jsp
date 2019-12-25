<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<form:form methodParam="EmailVO" action="/registeredEmail" method="post" onsubmit="return validateEmail()" >
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>

		<label for="email"><b>Email</b></label> 
		<input type="text" placeholder="Enter Email" name="email" id="email" required="Please enter email"> 
		
		<label for="psw"><b>Password</b></label> 
		<input type="password" placeholder="Enter Password" name="password" required>
		
		<label for="psw-repeat"><b>Repeat Password</b> </label> 
		<input type="password" placeholder="Repeat Password" name="repeatPassword" required>

		<button type="submit" class="registerbtn" >Next</button>

</form:form>

</body>
</html>