<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<form:form methodParam="UserAddressVO" action="/registeredAddress" method="post">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>

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

			<p>
				By creating an account you agree to our <a href="#">Terms Conditions and
					Privacy Policy</a>.
			</p>

			<button type="submit" class="registerbtn">Register</button>
</form:form>

</body>
</html>