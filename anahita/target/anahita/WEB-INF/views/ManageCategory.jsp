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
<title>Admin Page- Manage Categories</title>
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
	var cate = ${modelCatList};
	angular.module('Anahita', []).controller('CategoryController',
			function($scope) {
				$scope.Cate2 = cate;
			});
</script>


</head>

<body>
	<!-- nav bar with banner -->
	<jsp:include page="navbar.jsp"></jsp:include>

	<h3 class="snippets text-center">${msg }</h3>
	
	<h3 style ="text-decoration:underline;margin-top:50px;margin-left:110px"><b>MANAGE CATEGORIES :</b></h3>
	
	

	<!-- panel 1 for add new category-->

	<div class="container myPanel " >
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-xs-12 ">
				<c:if test="${check}">
				
					<div class="panel panel-default ">
						<div class="panel-heading">
							<h4>
								<b>Add Category</b>
							</h4>
						</div>

						<div class="panel-body">
							<form:form id="addCategory" class="form-horizontal" method="post"
								action="addCategory" modelAttribute="Category">
								<fieldset>

									<div class="form-group">
										<label class="col-xs-3 control-label">Category ID</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control " name="catId"
												path="catId" placeholder="Enter category id" />
											<form:errors path="catId" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Category Name</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="catName"
												path="catName" placeholder="Enter Category Name" />
											<form:errors path="catName" cssClass="error" />

										</div>
									</div>

									<div class="col-xs-10 ">
										<button type="submit"
											class=" col-xs-2  col-xs-offset-6 btn btn-primary btn-md  "  >Add
											Category</button>										
									</div>

								</fieldset>
							</form:form>
							</c:if>
						</div>
					</div>
				</div>


 <!-- panel 3 for Update category-->

	<div class="container myPanel  " style ="margin-top:-25px" >
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-xs-10">
				<c:if test="${!check}">
				
					<div class="panel panel-default  ">
						<div class="panel-heading">
							<h3>
								<b>Edit Category</b>
							</h3>
						</div>

						<div class="panel-body">
							<form:form id="editCategory" class="form-horizontal" method="post"
								action="updateCategory" modelAttribute="Category">
								<fieldset>
							
									<div class="form-group">
										<label class="col-xs-3 control-label">Category ID</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control " name="catId"
												path="catId"  readonly="true" placeholder="Enter category id" />
											<form:errors path="catId" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Category Name</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="catName"
												path="catName" placeholder="Enter Category Name" />
											<form:errors path="catName" cssClass="error" />

										</div>
									</div>

									<div class="col-xs-10 ">
										<button type="submit"
											class=" col-xs-2  col-xs-offset-6 btn btn-primary btn-md ">Update
											Category</button>										
									</div>

								</fieldset>
							</form:form>
							</c:if>
						</div>
					</div>
				</div> 


				<!-- Panel 2 to view category list and perform edit /delete individual rows -->

				<div class="container myPanel">
					<div class="row ">
						<div class="col-sm-12 ">
							<div class="panel panel-default">
								<div class="panel-heading" >
									<h4><b>View Category List </b></h4>
								</div>

								<div class="panel-body" ng-app="Anahita" ng-controller ="CategoryController">
									<table class="table table-bordered table-sm">
										<thead>
											<tr >
												<th>Category ID</th>
												<th>Category Name</th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
											<tr ng-repeat ="cate in Cate2 |orderBy:'catId'">
												<td> {{cate.catId}}</td>
												<td>{{cate.catName}}</td>
												<td class="text-center">
												      <a href="editcategory?getcid={{cate.catId}}"><button type="submit" class="btn btn-success">Edit</button>
													  <a href="deletecategory/{{cate.catId}}"><button style="margin-left: 25px" type="submit" 
													          class="btn btn-danger">Delete</button></a>
													          
													          
											    </td>					
											</tr>																			
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>
 
 
				
</body>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>

</html>

