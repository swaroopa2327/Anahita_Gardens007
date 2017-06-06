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
<title>Admin Page - Manage Products</title>
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
	var pl = ${modelProdList};
	var sl = ${modelSupList};
	var cl = ${modelCatList};
	angular.module('Anahita', []).controller('ProductController',
			function($scope) {
				$scope.plo = pl;
				$scope.slo = sl;
				$scope.clo = cl;
			});
</script>



</head>

<body ng-app="Anahita" ng-controller="ProductController">
	<!-- nav bar with banner -->

	<jsp:include page="navbar.jsp"></jsp:include>
	<div style="margin-bottom: 25px"></div>
	
		<h3 style ="text-decoration:underline;margin-top:50px;margin-left:110px"><b>MANAGE PRODUCTS :</b></h3>
	
	<!-- panel 1 for add new product-->

	<div class="container myPanel">
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-xs-7 col-xs-offset-1">
					<c:if test="${check}">

						<div class="panel panel-default ">
							<div class="panel-heading">
								<h4>
									<b>Add New Product</b>
								</h4>
							</div>
							<div class="panel-body ">
								<form:form class="form-horizontal" method="post"
									action="addProduct" modelAttribute="manageProduct"
									enctype="multipart/form-data">

									<fieldset>
										<div class="form-group">
											<label class="col-xs-4 control-label">Product ID</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control " name="pId"
													path="pId" placeholder="Enter Product id" />
												<form:errors path="pId" cssClass="error" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-xs-4 control-label">Product Name</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pName"
													path="pName" placeholder=" Product Name" />
												<form:errors path="pName" cssClass="error" />

											</div>
										</div>


										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Description</label>
											<div class="col-xs-7">
												<form:textarea class="form-control" name="pDesc"
													path="pDesc" placeholder="Product Description" rows="5"></form:textarea>
												<form:errors path="pDesc" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Category</label>
											<div class="col-xs-7">
												<form:select path="catId" class="form-control ">
													<form:option ng-repeat="c in clo" value="{{c.catId}}">{{c.catName}}</form:option>


												</form:select>
												<form:errors path="catId" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Supplier</label>
											<div class="col-xs-7">
												<form:select path="sId" class="form-control "
													title="Select Supplier">
													<form:option ng-repeat="s in slo" value=" {{s.sId}}">{{s.sName}}</form:option>
												</form:select>
												<form:errors path="sId" cssClass="error" />
											</div>
										</div>


										<div class="form-group">
											<label class="col-xs-4 control-label">Product Image</label>
											<div class="col-xs-7">
												<form:input type="file" path="pImage"  id="pImage" class="form-control"/>
											</div>
										</div>
										
										

										<div class="form-group">
											<label class="col-xs-4 control-label">Product Price
												per Unit</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pPrice"
													path="pPrice" placeholder="Price per Unit" />
												<form:errors path="pPrice" cssClass="error" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-xs-4 control-label">Product
												Quantity in Stock</label>
											<div class="col-xs-7">
												<form:input type="text" class="form-control" name="pStock"
													path="pStock" placeholder="Quantity in Stock" />
												<form:errors path="pStock" cssClass="error" />

											</div>
										</div>

										<div class="col-xs-10 ">
											<button type="submit"
												class="btn btn-primary  col-md-offset-4">Add New
												Product</button>
										</div>

									</fieldset>
								</form:form>
					</c:if>
				</div>
			</div>
		</div>

		<!-- panel 2 for edit product -->

		<div class="container myPanel">
			<div class=" formHeader ">
				<div class="row ">
					<div class="col-xs-6">
						<c:if test="${!check}">

							<div class="panel panel-default ">
								<div class="panel-heading">
									<h4>
										<b>Edit Product</b>
									</h4>
								</div>
								<div class="panel-body">
									<form:form id="editProduct" class="form-horizontal"
										method="post" action="updateProduct"
										modelAttribute="manageProduct" enctype="multipart/form-data">

										<fieldset>
											<div class="form-group">
												<label class="col-xs-5 control-label">Product ID</label>
												<div class="col-xs-5">
													<form:input type="text" class="form-control " name="pId"
														path="pId" readonly="true" placeholder="Enter Product id" />
													<form:errors path="pId" cssClass="error" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-xs-5 control-label">Product Name</label>
												<div class="col-xs-5">
													<form:input type="text" class="form-control" name="pName"
														path="pName" placeholder=" Product Name" />
													<form:errors path="pName" cssClass="error" />
												</div>
											</div>


											<div class="form-group">
												<label class="col-xs-5 control-label">Product
													Description</label>
												<div class="col-xs-5">
													<form:textarea class="form-control" name="pDesc"
														path="pDesc" placeholder="Product Description" rows="5"></form:textarea>
													<form:errors path="pDesc" cssClass="error" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-xs-4 control-label">Product
													Category</label>
												<div class="col-xs-7">
													<form:select path="catId" class="form-control ">
														<form:option ng-repeat="c in clo" value="{{c.catId}}">{{c.catName}}</form:option>


													</form:select>
													<form:errors path="catId" cssClass="error" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-xs-4 control-label">Product
													Supplier</label>
												<div class="col-xs-7">
													<form:select path="sId" class="form-control "
														title="Select Supplier">
														<form:option ng-repeat="s in slo" value=" {{s.sId}}">{{s.sName}}</form:option>
													</form:select>
													<form:errors path="sId" cssClass="error" />
												</div>
											</div>


											<div class="form-group">
												<label class="col-xs-4 control-label">Product Image</label>
												<div class="col-xs-7">
													<form:input type="file" path="pImage" name="imageToUpload"  class ="form-control"/>
												</div>
											</div>

											<div class="form-group">
												<label class="col-xs-5 control-label">Product Price
													per Unit</label>
												<div class="col-xs-5">
													<form:input type="text" class="form-control" name="pPrice"
														path="pPrice" placeholder="Price per Unit" />
													<form:errors path="pPrice" cssClass="error" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-xs-5 control-label">Product
													Quantity in Stock</label>
												<div class="col-xs-5">
													<form:input type="text" class="form-control" name="pStock"
														path="pStock" placeholder="Quantity in Stock" />
													<form:errors path="pStock" cssClass="error" />

												</div>
											</div>

											<div class="col-xs-10 ">
												<button type="submit"
													class="btn btn-primary  col-md-offset-4">Update
													Product</button>
											</div>

										</fieldset>
									</form:form>
						</c:if>
					</div>
				</div>
			</div>

			<!-- Panel 3 to view Product list and perform view /edit /delete individual rows -->

			<div class="container myPanel">
				<div class="row ">
					<div class="col-sm-12 ">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4>
									<b>View Product List </b>
									</h4>
							</div>

							<div class="panel-body">
								<table class="table table-bordered table-sm">
									<thead>
										<tr>
											<th>Product Image</th>
											<th>Product Details</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<tr ng-repeat="p in plo |orderBy:'catId'">
											<td><img width="160px" height="150px"
												src="resources/ProductImages/{{p.pId}}.jpg" />
											</td>

											<td>
											<ul>
													<li><span><b>Product ID: </b></span>{{p.pId}}</li>
													<li><span><b>Product Name: </b></span>{{p.pName}}</li>
													<li><span><b>Supplier ID: </b></span>{{p.sId}}</li>
													<li><span><b>Category ID : </b></span>{{p.catId}}</li>
													<li><span><b>Product Price:Rs. </b></span>{{p.pPrice}}</li>
													<li><span><b>Products in  Stock: </b></span>{{p.pStock}}</li>
												</ul>
											</td>
											
											<td class="text-center">
											<a href="editproduct?getpid={{p.pId}}"><button
														type="submit" class="btn btn-success">Edit</button></a>
											<a href="removeproduct/{{p.pId}}"><button
													        style="margin-left: 25px" type="submit"
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