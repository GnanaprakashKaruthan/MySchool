<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<form:form methodParam="UserDetailsVO" action="/registeredUser" method="post">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>

					<label for="fname"><b>First Name</b></label> 
			<input type="text" placeholder="Enter First Name" name="firstName" required> 
			
			<label for="lname"><b>Last Name</b></label>
			<input type="text" placeholder="Enter Last Name" name="lastName" required> 
			
						<label for="fname"><b>Middle Name</b></label> 
			<input type="text" placeholder="Enter Middle Name" name="middleName" > 
			
			<label for="lname"><b>SeconLast Name</b></label>
			<input type="text" placeholder="Enter SeconLast Name" name="secondLastName" > 
			
			<!-- <label for="dateOfBirth"><b>DOB</b> </label> 
			<input type="text" placeholder="Date Of Birth" name="dateOfBirth" required> -->

			
			<!-- <label for="dateOfBirth"><b>DOB</b> </label> 
			<input type="text" placeholder="Date Of Birth" name="dateOfBirth" required> -->



		<button type="submit" class="registerbtn">Next</button>

</form:form>

</body>
</html>