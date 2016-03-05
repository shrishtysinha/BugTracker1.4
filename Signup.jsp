<html>
	<head>
		<title>BugTrax</title>
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_reset.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_main.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_signup.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_header.css"> 
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_footer.css">
		<script src="assets/javascripts/validateLoginInfo.js"> </script>
	</head>
	<body>
		<div class="container">
			<%@include file="header.html" %>
			
				<form id="signupForm" action="Login" method="POST" name="LoginForm">
					<legend>Please fill out the form.</legend><br><br>
				  
					 <div class="rowForm">
					<label for="fname">
					  First Name:
					</label>
					  <input type="text" name="fname" required> <br><br>
					</div>
					
					 <div class="rowForm">
					<label for="mname">
					  Middle Name:
					</label>
					  <input type="text" name="mname"><br><br>
					</div>
					
					 <div class="rowForm">
					<label for="lname">
					  Last Name:
					</label>
					  <input type="text" name="lname" required><br><br>
					</div>
					
					 <div class="rowForm">
					<label for="username">
					  Username:
					</label>
					  <input type="text" name="username" placeholder="Select a username for yourself" required><br><br>
					</div>
					
					 <div class="rowForm">
					<label for="password">
					  Password:
					</label>
					  <input type="text" name="password" placeholder="********" required><br><br>
					</div>
							
					 <div class="rowForm">		
					<label for="depart">
					  Department:
					</label>
					  <input type="text" name="depart" required><br><br>
					</div>
					
					
				  
					<input class="clickForm" type="submit" name="submit" value="Create Account">
				  
				</form>
			
			<%@include file="footer.html" %>
		</div>
	</body>
</html>

