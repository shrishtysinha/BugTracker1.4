<html>
	<head>
		<title>BugTrax</title>
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_reset.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_main.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_login.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_header.css"> 
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_footer.css">
		<script src="assets/javascripts/validateLoginInfo.js"> </script>
	</head>
	<body>
		<div class="container">
			<%@include file="header.html" %>
			<div class="login">
				<section class="colLogin">
					<form action="Login" method="POST" name="LoginForm">
						<legend>Login</legend>
					  <fieldset class="account-info">
						<label>
						  Username
						  <input type="text" name="uname">
						</label>
						<label>
						  Password
						  <input type="password" name="upass">
						</label>
					  </fieldset>
					  <fieldset class="account-action">
						<input class="click" type="submit" name="submit" value="Login">
						<!-- <label>
						  <input type="checkbox" name="remember"> Stay signed in
						</label> -->
					  </fieldset>
					</form>
				</section><!--
				--><section class="colLogin colSignup">
					<h3>New User?<a href="Signup.jsp">Sign Up.</a></h3>
				</section>
			</div>
			<%@include file="footer.html" %>
		</div>
	</body>
</html>

