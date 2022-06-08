<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Panel</title>
		<script src="./js/bootstrap.js"></script>
		<link rel="shortcut icon" href="./img/footer_logo.png" type="image/x-icon">
		<link rel="stylesheet" href="./css/bootstrap.css">
	</head>

	<body>
            <%@include file="./component/navbar.jsp" %>
            <br>
            <h2 style="text-align: center;">Admin login</h2>
		<form class="row g-3" action="./" method="post" style="padding: 30px 15% 15% 15%;">
			<div class="col-md-6">
				<label for="inputEmail4" class="form-label">Username</label>
				<input type="text" class="form-control" id="inputEmail4">
			</div>
			<div class="col-md-6">
				<label for="inputPassword4" class="form-label">Password</label>
				<input type="password" class="form-control" id="inputPassword4">
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-primary">Sign in</button>
			</div>
		</form>
            
	</body>

	</html>