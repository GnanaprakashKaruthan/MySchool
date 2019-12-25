<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1">
<title>My Account</title>
<link href="/css/index.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<jsp:include page="../header/title.jsp"></jsp:include>
<script src="/js/main.js"></script>
</head>
<body onload="slideShow()">
	<jsp:include page="../header/header.jsp"></jsp:include>
	<div>
		Hello ${userVO.email} <br> 
		Your password is ${userVO.password}<br>
	</div>
	<div class="footer-border">
		<jsp:include page="../header/footer.jsp"></jsp:include>
	</div>
</body>
</html>