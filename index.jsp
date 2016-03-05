<html>
	<head>
		<title>BugTrax</title>
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_reset.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_main.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_header.css"> 
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_footer.css">
	</head>
	<body>
		<div class="container">
			<%@include file="header.html" %>
			<div class="home">
				<h1>Main Page</h1><br>
				<div class="btn">
				<a class="button" href="Login.jsp">Login/SignUp</a>
				<br>
				<a class="button" href="ShowBugs.jsp">Bugs</a>
				<br>
				<a class="button" href="ShowProjects.jsp">Projects</a>
				</div>
			</div>
			<br>
			<!-- <form action="" method="POST">
				Employee ID: <input type="text" name="uid"><br>
				Name: <input type="text" name="uname"><br>
				Age: <input type="text" name="uage"><br>
				Salary: <input type="text" name="usalary"><br>
				Department no.: <input type="text" name="udno"><br>
				<input type="submit" value="Submit">
			</form>
			<form action="show.jsp" method="GET">
				<input type="submit" value="Show Records"> 
			</form> -->
			<%@include file="footer.html" %>
		</div>
	</body>
</html>
