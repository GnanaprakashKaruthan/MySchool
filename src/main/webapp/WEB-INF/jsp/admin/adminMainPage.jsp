<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/module.css" rel="stylesheet">
<link href="/css/dropDown.css" rel="stylesheet">
</head>
<body>

	<%-- <form:form action="/register" method="post"> --%>
		<div class="container">
		Welcome Admin!
		<c:choose>
		<c:when test="${page eq 'myAccountPage'}">
			<jsp:include page = "adminModule.jsp" />
		</c:when>
		<c:when test="${page eq 'registerationFirst'}">
			<jsp:include page = "../register/registerationFirst.jsp" />
		</c:when>
		
		<c:when test="${page eq 'registrationNext'}">
			<jsp:include page = "../register/registrationNext.jsp" />
		</c:when>
		
		<c:when test="${page eq 'registrationFinal'}">
			<jsp:include page = "../successful.jsp" />
		</c:when>
		
		<c:when test="${page eq 'registrationNext'}">
			<jsp:include page = "../register/registrationNext.jsp" />
		</c:when>
		</c:choose>
		
		<%-- <form:form action="/registerAction" method="post">
		<c:choose>  registerationNext
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
