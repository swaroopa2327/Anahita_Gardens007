<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
		<nav
			class="navbar navbar-default navbar-fixed-top no-padding no-margin  ">
			<div class="container ">
				<div class="navbar-header  ">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand " href="#">Anahita Gardens</a>
				</div>

				<div class="collapse navbar-collapse" id="myNavbar">
				<c:choose>
					<c:when test="${sessionScope.AdminLoggedIn != null}">
				
					     <ul class="nav navbar-nav">
							<li class="active"><a href="Home"><span
									class="glyphicon glyphicon-home"></span> Home </a></li>
							<li><a href="ManageCategory">Manage Categories </a></li>
							<li><a href="ManageProducts">Manage Products </a></li>
							<li><a href="ManageSuppliers">Manage Suppliers </a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">Welcome ${sessionScope.AdminLoggedIn}</a></li>
							<li><a href="logout">Logout</a></li>
						</ul>
				 	 </c:when>
				 	 
				 	 <c:when test="${sessionScope.UserLoggedIn !=null}">
				 	    <ul class="nav navbar-nav">
							<li class="active"><a href="Home"><span
								class="glyphicon glyphicon-home"></span> Home </a></li>
							<li><a href="AboutUs"><div class ="hidden-md hidden-sm">About
									Us</div> <span
								class="glyphicon glyphicon-info-sign visible-sm visible-md"></span>
								</a></li>
							  <li><a href="ContactUs"><div class="hidden-md hidden-sm">Contact
									Us</div> <span
								class="glyphicon glyphicon-envelope visible-sm visible-md"></span></a></li>
								<li><a href="ShowProducts"><div class="hidden-md hidden-sm">Products
								</div> <span
								class="glyphicon glyphicon-info-sign visible-sm visible-md"></span>
								</a></li>
					      </ul>
					      <ul class="nav navbar-nav navbar-right">
							<li><a href="#"><div class="hidden-md hidden-sm ">Hello  ${sessionScope.UserLoggedIn}
									</div> <span class="glyphicon glyphicon-user visible-sm visible-md"></span>
							</a></li>
							<li><a href="logout"><div class="hidden-md hidden-sm">Logout</div>
								<span class="glyphicon glyphicon-log-in visible-md visible-sm"></span>
							</a></li>

						</ul>
					</c:when>
					
				 	<c:otherwise>
					<ul class="nav navbar-nav">
						<li class="active"><a href="Home"><span
								class="glyphicon glyphicon-home"></span> Home </a></li>
						<li><a href="AboutUs"><div class="hidden-md hidden-sm">About
									Us</div> <span
								class="glyphicon glyphicon-info-sign visible-sm visible-md"></span>
						</a></li>
						<li><a href="ContactUs"><div class="hidden-md hidden-sm">Contact
									Us</div> <span
								class="glyphicon glyphicon-envelope visible-sm visible-md"></span>
						</a></li>
						<li><a href="ShowProducts"><div class="hidden-md hidden-sm">Products
								</div> <span
								class="glyphicon glyphicon-info-sign visible-sm visible-md"></span>
								</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">

						<li><a href="SignUp"><div class="hidden-md hidden-sm ">Sign
									Up</div> <span class="glyphicon glyphicon-user visible-sm visible-md"></span>
						</a></li>
						<li><a href="Login"><div class="hidden-md hidden-sm">Login</div>
								<span class="glyphicon glyphicon-log-in visible-md visible-sm"></span>
						</a></li>

					</ul>
				</c:otherwise>
			</c:choose>
				
		</div>
	</div>
</nav>
	



<!-- Banner -->
<div style="margin-bottom:15px ;margin-top:15px"></div>
<div class="container myHeader">
	<div class="page-header ">
		<img src="resources/images/LogoFinal.png" class="img-responsive ">
	</div>
</div>
<!-- End of Banner -->
</body>
</html>