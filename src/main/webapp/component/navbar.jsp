<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP Page</title>
		<script src="../js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="./css/navbar.css">
	</head>

	<body>
		<nav class="navbar navbar-expand-xxl bg-warning">
			<div class="container-fluid">
				<a href="./index.jsp" class="narbar-brand">
					<img src="./img/logo.svg" alt="logo">
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="./orders.jsp">Order</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="./blogs.jsp">Blogs</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="./about.jsp">About Us</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</body>

	</html>