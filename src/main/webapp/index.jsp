<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>The Sell Water House Delivery</title>
		<script src="./js/bootstrap.bundle.js"></script>
		<link rel="shortcut icon" href="./img/footer_logo.png" type="image/x-icon">
		<link rel="stylesheet" href="./css/bootstrap.min.css">
	</head>

	<body>
		<%@include file="./component/navbar.jsp" %>
			<div class="container-xxl" style="background-color: rgb(252, 131, 38);">
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
							aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
							aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
							aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner" style="padding: 20px 20px 20px 20px;">
						<div class="carousel-item active" data-bs-interval="3000">
							<img src="./img/case_1.jpg" class="d-block w-100" alt="1">
						</div>
						<div class="carousel-item" data-bs-interval="3000">
							<img src="./img/case_2.jpg" class="d-block w-100" alt="2">
						</div>
						<div class="carousel-item" data-bs-interval="3000">
							<img src="./img/case_3.jpg" class="d-block w-100" alt="3">
						</div>
					</div>
				</div>
				<%@include file="./component/order.jsp" %>
				<%@include file="./component/blog.jsp" %>
				<%@include file="./component/footer.jsp" %>
			</div>
	</body>

	</html>