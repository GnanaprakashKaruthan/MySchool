<!DOCTYPE html>
<html>
<head>
<style>
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	border: none;
	color: white;
	text-decoration: none;
	font-size: medium;
	font-weight: bold
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}

.main-btn {
	color: white;
	text-decoration: none;
	font-size: large;
	font-weight: bold;
}
</style>

<script type="text/javascript">
 function openPage(pageURL)
 {
 window.location.href = pageURL;
 }
</script>

</head>
<body>

	<!-- ul>
  <li><a href="#home" class="active">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">Log Out</a></li -->

	<div style="background-color: #4CAF50">
		<div class="dropdown">
			<button class="dropbtn">Student</button>
			<div class="dropdown-content">
				<a href="adminRegister">Add Student</a> 
				<a href="#">Update Student</a> 
				<a href="#">Delete Student</a>
			</div>
		</div>

		<div class="dropdown">
			<a href="#" class="main-btn">News</a>
		</div>

		<div class="dropdown">
			<button class="dropbtn">Contact</button>
			<div class="dropdown-content">
				<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">About</button>
			<div class="dropdown-content">
				<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
			</div>
		</div>

		<div class="dropdown">
				<a href="login" style="color: white; text-decoration: none">Log Out</a>
		</div>

	</div>
</body>
</html>
