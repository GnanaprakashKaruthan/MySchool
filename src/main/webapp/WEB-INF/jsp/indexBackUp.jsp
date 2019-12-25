<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<title>
Bharathi
</title>
<link href="/css/index.css" rel="stylesheet">
<link href="/css/marquee.css" rel="stylesheet">
<jsp:include page="header/title.jsp"></jsp:include>
<script src="/js/main.js"></script>
</head>
<body onload="slideShow()">
	<jsp:include page="header/headerIndex.jsp"></jsp:include>
	<jsp:include page="glow.jsp"></jsp:include>	 
	<!-- Admin login -->
	<!-- Student Login -->
	<div class="index-login-text" >Already have an account?</div>
	<a href="login" ><img class="index-login-button" src="/images/buttons/login-200.gif" alt="login icon" height=40px width=100px> </a>
	<div class="index-signup-text" >Don't have an account?</div>
		
		<a href="register" ><img class="index-signup-button" src="/images/buttons/signup-200.gif" alt="sign up icon" height=40px width=100px> </a>
		
		<br><br><br>
		<div class="wrapper">
	        <div class="column1"><jsp:include page="header/slideShow.jsp"></jsp:include></div>
	        <div class="column2"><jsp:include page="header/about.jsp"></jsp:include></div>
		</div>
		
	<br>
	<div class="footer-border">
			<jsp:include page="header/footer.jsp"></jsp:include><br>
			<img src="/images/icons/fb-icon.gif">&nbsp;<a href="https://www.facebook.com/gnanaprakashkaruthanmathur" target="_blank">Contributor</a>
	</div>
</body>
</html>