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
<title>Product Description</title>

<style>
.Category {
	color: darkgreen;
	font-size: 12pt;
	font-weight: bold;
	font-variant-caps: small-caps;
}

.nav-item {
	font-colour: darkgreen;
	font-size: 11pt;
	font-weight: bold;
}

.menu {
	margin-right: 10px;
	margin-left: 5px;
}
</style>
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
<script src="resources/js/angular.js"></script>

<script>
	var oneProd = ${modelOneProduct};
	angular.module('Anahita', []).controller(
			'OneProdController', function($scope) {
				$scope.pdo = oneProd;
			});
</script>

</head>

<body ng-app="Anahita" ng-controller="OneProdController">

	<!--  home navbar is  displayed for general view  -->

	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- Include user home nav which will be displayed when user is logged in  -->


	<hr style="margin-top: 7px">

	<!-- side bar for categories -->
	<!--  <div class=" container " style ="margin-top:-15px">
	   <ul class="nav navbar nav-justified">
		  <li class="nav-item "><a class="nav-link active" href="#">Flowering   Annuals</a></li>
		  <li class="nav-item "><a class="nav-link" href="#">Flowering Perennials</a></li>
		  <li class="nav-item"><a class="nav-link" href="#">Foliage   Plants</a></li>
		  <li class="nav-item"><a class="nav-link " href="#">Indoor   Plants</a></li>
		  <li class="nav-item"><a class="nav-link " href="#">Orchids, Aeriel Plants</a></li>
		  <li class="nav-item"><a class="nav-link " href="#">Pots and Planters</a></li>
		  <li class="nav-item"><a class="nav-link " href="#">Garden  Decor</a></li>		  
      </ul>
  </div>-->


	<!--Product Description  -->
	<div class="container myCompany" style="margin-top: 65px">
		<div class="row">
			<div class="col-lg-10 "
				style="margin-left: 125px; margin-right: 25px; margin-top: -20px">
				<div class="media ">
					<div class="media-left ">
						<img class="media-object "
							src="resources/ProductImages/{{pdo.pId}}.jpg" height="325px"
							width="300px" />
					</div>

					<div class="media-body ">
						<div class="media-heading text-center product-title">{{pdo.pName}}</div>

						<div class="product-desc" style="margin-left: 25px">
							<div>
								<b>{{pdo.pDesc}}</b>
							</div>
							<div class="product-buy ">
								<h4 style="margin-left: 2px">
									<b>Rs.{{pdo.pPrice}} <span
										style="margin-left: 25px; color: Red;"><b>In Stock</b></span>
									</b>
								</h4>

							</div>
						</div>
						<hr>

						<c:if test="${sessionScope.UserLoggedIn ==null}">
							<div class="cart buttons" style="margin-top: 2px">
								<a href="Login">
									<button class="btn "
										style="background-color: darkgreen; font-size: 10pt; color: white; margin-left: 50px;">
										Buy Now <span class="glyphicon glyphicon-shopping-cart"
											style="margin-left: 10px"></span>
									</button>
								</a> <a href="ShowProducts" class="btn" id="viewproductsbutton">
									<button id="cartbutton" class="btn btn-primary "
										style="font-size: 10pt; color: white; margin-top: -3px; margin-left: 100px"">
										View more Products<span class="glyphicon glyphicon-search"
											style="margin-left: 10px"></span>
									</button>
								</a>
							</div>
						</c:if>

						<c:if test="${sessionScope.UserLoggedIn !=null}">
							<div class="cart buttons" style="margin-top: 2px">
								<a href="#">
									<button class="btn "
										style="background-color: darkgreen; font-size: 10pt; color: white; margin-left: 50px;">
										add to cart <span class="glyphicon glyphicon-shopping-cart"
											style="margin-left: 10px"></span>
									</button>
								</a> <a href="ShowProducts" class="btn" id="viewproductsbutton">
									<button id="cartbutton" class="btn btn-primary "
										style="font-size: 10pt; color: white; margin-top: -3px; margin-left: 100px"">
										View more Products<span class="glyphicon glyphicon-search"
											style="margin-left: 10px"></span>
									</button>
								</a>
							</div>
						</c:if>


					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<div style="margin-top: 40px"></div>
<jsp:include page="footer.jsp"></jsp:include>

</html>
