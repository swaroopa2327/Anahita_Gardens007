<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page- Manage Users</title>
<style>
.error {
	color: red;
	font-weight: bold;
	font-size: 9pt;
}
.snippets {
	color: red;
	font-size: 12pt;
	font-weight: bold;
	margin-top:100px;
}
.table th {
	text-align: center;
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

	var ul = ${modeluserlist};
	//var oneus =${oneUserModel};

		angular.module('Anahita', []).controller('UserController',
			function($scope) {
				$scope.ulo = ul;
				//$scope.olo = oneus;

			});
</script>
</head>

<body ng-app="Anahita" ng-controller ="UserController">
	<!-- nav bar with banner -->
	
				<!-- Panel 3 to view Supplier list and perform edit /delete individual rows -->

				<div class="container myPanel"  >
					<div class="row ">
						<div class="col-xs-12 ">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4>
										<b>View userList</b>
									</h4>
								</div>

								<div class="panel-body"  ng-app="Anahita" ng-controller ="UserController">
									<table class="table table-bordered table-sm">
										<thead>
											<tr>									
												<th>Confirmpassword</th>
												<th>Status</th>
												<th>user role</th>
												<th>User address</th>
												<th>dob</th>
												<th>email</th>
												<th>fname</th>
												<th>last name</th>
												<th>username</th>
												<th>user phone</th>
												<th>user pswd</th>
												
												<th>Action</th>	
											</tr>
										</thead>
										<tbody>
											<tr ng-repeat ="u in ulo ">
												<td>{{u.confirmpswd}}</td>
												<td>{{u.Status}}</td>
												<td>{{u.urole}}</td>
												<td>{{u.userAddress}}</td>
												<td>{{u.userDob}}</td>
												<td>{{u.userEmail}}</td>
												<td>{{u.userFname}}</td>
												<td>{{u.userLname}}</td>
												<td>{{u.username}}</td>
												<td>{{u.userPhno}}</td>
												<td>{{u.userpswd}}</td>
										
												<td class="text-center">
												  <a href="viewOne?getId={{u.username}}"><button type="submit"
													 class="btn btn-success">view user </button>
												         											          
											   </td>								
										</tbody>
									</table>
				
								</div>
							</div>
						</div>
					</div>
								
				</div>
				
				
				
				<!--  <ul>
				
				-->
				
				
				
				
				
				
				
				
				
				
</body>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>

</html>