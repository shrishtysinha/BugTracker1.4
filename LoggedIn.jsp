<html>
	<head>
		<title>BugTrax</title>
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_reset.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_main.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_account.css">
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_header.css"> 
		<link type="text/css" rel="stylesheet" href="assets/stylesheets/style_footer.css">
	</head>
	<body>
		<div class="container">
			<%@include file="header.html" %>
			<div class="account">
				<% String userType = (String) request.getAttribute("userType");
					if(userType.equals("A"))
					
				
					{ %>	
						<h3>Welcome Administrator</h3>
						<img src="assets/images/admin.png">
					<% } %>
				
				
				
				<% if(userType.equals("U")) { %>
						<h3>Welcome User </h3>
						<img src="assets/images/user.jpg">
				<% } %>
				
			</div>
			<%@include file="footer.html" %>
		</div>
	</body>
</html>
