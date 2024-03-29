<%@page contentType="text/html" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>The Sell Water House Delivery</title>
		<script src="./js/bootstrap.js"></script>
		<link rel="shortcut icon" href="./img/footer_logo.png" type="image/x-icon">
		<link rel="stylesheet" href="./css/bootstrap.css">
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
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
							aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
							aria-label="Slide 5"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5"
							aria-label="Slide 6"></button>
					</div>
					<div class="carousel-inner" style="padding: 20px 20px 20px 20px;">
						<div class="carousel-item active" data-bs-interval="4000">
							<img src="./img/case_1.jpg" class="d-block w-100" alt="1">
						</div>
						<div class="carousel-item" data-bs-interval="4000">
							<img src="./img/case_2.jpg" class="d-block w-100" alt="2">
						</div>
						<div class="carousel-item" data-bs-interval="4000">
							<img src="./img/case_3.jpg" class="d-block w-100" alt="3">
						</div>
						<div class="carousel-item" data-bs-interval="4000">
							<img src="./img/case_4.jpg" class="d-block w-100" alt="4">
						</div>
						<div class="carousel-item" data-bs-interval="4000">
							<img src="./img/case_5.jpg" class="d-block w-100" alt="5">
						</div>
						<div class="carousel-item" data-bs-interval="4000">
							<img src="./img/case_6.jpg" class="d-block w-100" alt="6">
						</div>
					</div>
				</div>
			</div>
			<%@include file="./component/order.jsp" %>
				<%@include file="./component/blog.jsp" %>
					<%@include file="./component/footer.jsp" %>
	</body>

	</html>