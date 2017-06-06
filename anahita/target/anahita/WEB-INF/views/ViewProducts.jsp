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
<title>Anahita Gardens - Products Page</title>
<style>

.Category{
 color:darkgreen;
 font-size:12pt;
 font-weight:bold;
 font-variant-caps:small-caps;
 
}
.nav-item{
font-colour:darkgreen;
font-size:11pt;
font-weight:bold;

}

.menu{
margin-right:10px;
margin-left:5px;
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
	var pl = ${modelProdList};

	var cl = ${modelCatList};

		angular.module('Anahita', []).controller('ProductController',
			function($scope) {
				$scope.plo = pl;
				$scope.clo = cl;		

			});
</script>

</head>

<body ng-app="Anahita" ng-controller="ProductController">
<!--  home navbar is  displayed for general view  -->

	<jsp:include page="navbar.jsp"></jsp:include>
	
<!--  user home nav  will be displayed when user is logged in  -->

	<hr style ="margin-top:7px">

	<!--tabs  for categories -->
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

<a href="ShowallUsers">Go to user page</a>

<!-- Products  Block -->

	<div class="container" style ="margin-top:-15px">
		<div class="row">
			
			<div class="col-md-12 col-xs-offset-1" style="margin-left: 10px" >
				 <div class="panel panel-default " ng-repeat = "c in clo |orderBy:'catId'">
				<!-- ng-repeat = "c in clo |orderBy:'catId'" | ng-repeat ="p in plo| filter: c.catId" -->
					  <div class="panel-heading  text-center Category" style="background-color:mistyrose;color:black" >{{c.catName}}</div>
					  <div class="panel-body" style="background-color:cornsilk" >
						<ul class="list-inline " >
							<li  class="menu" ng-repeat ="p in plo | filter: c.catId" >
								<div class="panel panel-default " style="width: 250px;height:325px">
									<div class="panel-heading text-center"
										style="background-color:lightcyan ;margin-top:2px">
										<a href="zoomProduct?getId={{p.pId}}" id="producta">
											<div>
												<img class="img-rounded img-fluid"
													src="resources/ProductImages/{{p.pId}}.jpg" height="200px"
													width="225px"> 
												
												<h5 class="text-center"style="color:darkred;font-size:11pt;margin-top:6px"><b>{{p.pName}}</b></h5>
												<h6 class="text-center" style="color:black;font-size:10pt;margin-bottom:2px"><b>Rs.{{p.pPrice}}</b></h6>
											</div>
										</a>
									</div>

									<div class="panel-body " >
										<a href="buyProduct" id="producta">
											<button  class="btn btn-sm "style="background-color:darkgreen;font-size:8pt ;color:white;margin-top:-3px">
												Buy Now <span class="glyphicon glyphicon-shopping-cart" style="margin-left:5px"></span>
											</button>
										</a> 
										
										<a href="zoomProduct?getId={{p.pId}}" id="producta">
											<button id="addtocartbutton" class="btn btn-sm pull-right"style="background-color:darkblue;font-size:8pt ;color:white;margin-top:-3px">
												View Details<span class="glyphicon glyphicon-info-sign" style="margin-left:5px" ></span>
											</button>
										</a> 															
									</div>
									
									<!--   The above button will be replaced by add to cart button when user is logged in  
									<div class="panel-body " >
										<a href="viewproduct?getId={{p.ProductId}}" id="producta">
											<button id="addtocartbutton" class="btn btn-sm "style="background-color:darkgreen;font-size:8pt ;color:white;margin-top:-3px">
												Add to Cart <span class="glyphicon glyphicon-shopping-cart" style="margin-left:5px"></span>
											</button>
										</a> 
										
										<a href="zoomProduct?getId={{p.pId}}" id="producta">
											<button id="addtocartbutton" class="btn btn-sm pull-right"style="background-color:darkblue;font-size:8pt ;color:white;margin-top:-3px">
												View Details<span class="glyphicon glyphicon-info-sign" style="margin-left:5px" ></span>
											</button>
										</a> 															
									</div>  -->
									
									
									
									
								</div>
							</li>
						</ul>
					</div>
				 </div>
				
			</div>
		</div>
	</div>



</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>


























