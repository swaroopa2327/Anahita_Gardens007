<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page- ShowOne user</title>
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

	var oneus =${oneUserModel};

		angular.module('Anahita', []).controller('UserController',
			function($scope) {
				$scope.olo = oneus;

			});
</script>
</head>

<body ng-app="Anahita" ng-controller ="UserController">


<ul>

    <li>{{olo.username}}</li>
    <li>{{olo.userEmail}}</li>
    <li>{{olo.urole}}</li>
    <li>{{olo.Status}}</li>
  


</ul>
</body>

</html>
