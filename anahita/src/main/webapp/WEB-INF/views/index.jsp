<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript"
	src="resources/js/bootstrapValidator.min.js"></script>
<script>

	var cl = ${listAllCat};

		angular.module('Anahita', []).controller('WelcomeController',
			function($scope) {
				$scope.clo = cl;		
			});
</script>
</head>

<body>


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
			</ul>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img class="img-responsive" src="resources/images/ban4.jpg"
						alt="garden" />
					<div class="carousel-caption ">
						<h4 >
							<b>Exclusive Garden Store :For Gardeners , by Gardeners !!</b>
						</h4>

					</div>
				</div>

				<div class="item">
					<img class="img-responsive" src="resources/images/ban2.jpg"
						alt="flowers" />
					<div class="carousel-caption ">
						<h4>
							<b>Colour your Yard !! </b>
						</h4>
					</div>
				</div>

				<div class="item">

					<img class="img-responsive" src="resources/images/ban1.jpg"
						alt="indoors" />
					<div class="carousel-caption">
						<h4>
							<b>Plants for Every Space , Every Occasion!!! </b>
						</h4>
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
	
	<div class="container " style="margin-top: 25px" >
	    <div class="panel-heading col-md-12 " text-center"><h5 style="font-size:11pt"><b>Featured Categories</b></h5></div>
				<ul class="list-inline row " style="margin-left:2px">
					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Flowering Annuals.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center" style="color: darkred; font-size: 8pt;margin-top:2px">
									<b>Flowering Annuals</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2">
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Flowering Perennials.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center" style="color: darkred; font-size: 8pt;margin-top:2px">
									<b>Flowering Perennials</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Foliage Plants.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center"style="color:darkred;font-size:8pt;margin-top:2px">
									<b>Foliage Plants</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/IndoorPlants.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center"style="color:darkred;font-size:8pt;margin-top:2px">
									<b>IndoorPlants</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Orchids.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center"style="color:darkred;font-size:8pt;margin-top:2px">
									<b>Orchids, Aeriel Plants</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading text-center"
								style="background-color: lightcyan; margin-top: 2px">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Pots and Planters.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center"style="color:darkred;font-size:8pt;margin-top:2px">
									<b>Pots And Planters</b>
								</h5>
							</div>
						</div>
					</li>

					<li class="menu col-md-2" >
						<div class="panel panel-default "
							style="width: 150px; height: 180px">
							<div class="panel-heading "
								style="background-color: lightcyan; margin-top: 2px;align:center">
								<a href="ShowProducts" id="producta">
									<div>
										<img class="img-rounded img-responsive "
											src="resources/images/Garden Decor.png" />
									</div>
								</a>
							</div>
							<div class="panel-body ">
								<h5 class="text-center"style="color:darkred;font-size:8pt;margin-top:2px">
									<b>Garden Decor</b>
								</h5>
							</div>
						</div>
					</li>
				</ul>
				
			</div>
			</div>

	



</body>

<!--Start of Page Footer -->

<jsp:include page="footer.jsp"></jsp:include>


<!--End  of Page Footer -->

</html>



