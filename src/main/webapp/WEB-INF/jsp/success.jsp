<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	
		My message ======== ${message}
		<div class="container">
			<a href="logout">Log Out</a>
		</div>

		<!-- <div class="container signin">
			<p>
				Don't have an account, click here to register? <a
					href="/forwardToregister">Register</a>.
			</p>
		</div> -->
	
</body>
</html>