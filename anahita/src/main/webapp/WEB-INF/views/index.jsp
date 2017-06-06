<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Anahita Gardens-Home Page</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="resources/css/myStyle.css">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>
<script>

	var cl = ${listAllCat};

		angular.module('Anahita', []).controller('WelcomeController',
			function($scope) {
				$scope.clo = cl;		
			});
</script>
</head>

<body >


	<jsp:include page="navbar.jsp"></jsp:include>
    
	<!-- Start of Carousel -->

	<div class="container new">
		<div id="myCarousel" class="carousel slide " data-ride="carousel"
			data-interval="4000">
			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ul>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/ban4.jpg" alt="garden" />
					<div class="carousel-caption top-left">
						<h3>
							<b>Exclusive Garden Store :For Gardeners , by Gardeners !!</b>
						</h3>

					</div>
				</div>

				<div class="item">
					<img src="resources/images/ban2.jpg" alt="flowers" />
					<div class="carousel-caption ">
						<h2>
							<b>Colour your Yard !! </b>
						</h2>
				</div>
				</div>

				<div class="item">

					<img src="resources/images/ban1.jpg" alt="indoors" />
					<div class="carousel-caption">
						<h2 id="flowersSlider">
							<b>Plants for Every Space , Every Occasion!!! </b>
						</h2>
					</div>
				</div>

				<div class="item">
					<img src="resources/images/cover4.jpg" alt="pots" />
					<div class="carousel-caption">
						<h2>
							<b> Your Ultimate One Stop Gardening Destination !</b>
						</h2>
					</div>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span></a> <a class="right carousel-control"
				href="#myCarousel" data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span></a>
		</div>
	</div>

	<!-- End of Carousel -->

</body>

<!--Start of Page Footer -->

<jsp:include page="footer.jsp"></jsp:include>


<!--End  of Page Footer -->

</html>



