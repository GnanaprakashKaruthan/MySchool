<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/module.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
</head>
<body>

<span style="color: white;font-size:large;font-weight:bold">Admin Dashboard</span>  
		<div class="container">
		
		<c:choose>
    		<%-- <c:when test="${isAdminUser eq true}">
        	<jsp:include page = "../admin/adminMainPage.jsp" />
    		</c:when> --%>  
    		<c:when test="${page eq 'myAccountPage'}">
        	<jsp:include page = "../admin/adminMainPage.jsp" />
    		</c:when>
    		
    		<c:otherwise>
        	<jsp:include page = "../success.jsp" />
    		</c:otherwise>
		</c:choose>
		</div>
		
	<div class="footer-border">
			<jsp:include page="../header/footer.jsp"></jsp:include><br>
			<img src="/images/icons/fb-icon.gif">&nbsp;<a href="https://www.facebook.com/gnanaprakashkaruthanmathur" target="_blank">Contributor</a>
	</div>
</body>
</html>
