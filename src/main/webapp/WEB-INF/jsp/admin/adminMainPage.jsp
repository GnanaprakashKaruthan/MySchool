<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

	<%-- <form:form action="/register" method="post"> --%>
		<div class="container">
		Welcome Admin!
		<c:choose>
		<c:when test="${page eq 'myAccountPage'}">
			<jsp:include page = "adminModule.jsp" />
		</c:when>
		<c:when test="${page eq 'adminRegister'}">
			<jsp:include page = "../register/register.jsp" />
		</c:when>
		</c:choose>
		
		<%-- <form:form action="/registerAction" method="post">
		<c:choose>
		<c:when test="${page eq 'adminRegister'}">
			<jsp:include page = "../register/register.jsp" />
		</c:when>
		</c:choose>
		</form:form> --%>
			
		<form:form action="/registerAction" method="post">
		<c:choose>
		<c:when test="${page eq 'registerationSuccessfull'}">
			<jsp:include page = "../success.jsp" />
		</c:when>
		</c:choose>
		</form:form>
			
			
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="/login">Sign in</a>.
			</p>
		</div>

</body>
</html>
