<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<jsp:include page="../header/title.jsp"></jsp:include>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/register.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<script src="/js/main.js"></script>
</head>
<body>

	<jsp:include page="../header/header.jsp"></jsp:include>
	<br>
	<br>
	<br>
<div class="container-register">
	<c:choose>
		<c:when test="${page eq 'registerEmail'}">
			<jsp:include page="registerEmail.jsp" />
		</c:when>
		<c:when test="${page eq 'registerUser'}">
			<jsp:include page="registerUserDetails.jsp" />
		</c:when>
		<c:when test="${page eq 'registerAddress'}">
			<jsp:include page="registerAddressDetails.jsp" />
		</c:when>
		<c:when test="${page eq 'registrationSuccessfull'}">
			<jsp:include page="registrationSuccessful.jsp" />
		</c:when>
	</c:choose>
	</div>
	<br>
	<br>
	<div class="footer-border">
		<p>
			Click here to <a href="/login">Sign in</a>.
		</p>
		<jsp:include page="../header/footer.jsp"></jsp:include>
	</div>

</body>
</html>
