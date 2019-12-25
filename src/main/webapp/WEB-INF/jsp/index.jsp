<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<title>Bharathi</title>
<link href="/css/index.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<link href="/css/marquee.css" rel="stylesheet">

<script src="/js/main.js"></script>
</head>
<body>
		<div class="index-container">
			<jsp:include page="header/header.jsp"></jsp:include>
			<jsp:include page="helpers/glow.jsp"></jsp:include>
			<div class="index-login-text">Already have an account?</div>
			<br> <a href="login"><img class="index-login-button"
				src="/images/buttons/login-200.gif" alt="login icon" > </a>
			<div class="index-signup-text">Don't have an account?</div>
			<a href="register"><img class="index-signup-button"
				src="/images/buttons/signup-200.gif" alt="sign up icon" > </a> <br>
			<br>
			<br>
			<div class="show-the-slides">
				<jsp:include page="helpers/autoSlide.jsp"></jsp:include>
			</div>
			<br>
			<div class="footer-border">
				<a href="/successStories" target="_blank">Success Stories</a><br>
				<jsp:include page="header/footer.jsp"></jsp:include><br> <img
					src="/images/icons/fb-icon.gif">&nbsp;<a
					href="https://www.facebook.com/gnanaprakashkaruthanmathur"
					target="_blank">Contributor</a>
			</div>
		</div>
</body>
</html>