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

<title>Admin Page- Manage Suppliers</title>
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
	var sup2 = ${modelSupList};
	angular.module('Anahita', []).controller('SupplierController',
			function($scope) {
				$scope.Supp = sup2;
			});
</script>
</head>

<body>
	<!-- nav bar with banner -->
	<jsp:include page="navbar.jsp"></jsp:include>
		<!--  <div style="margin-bottom: 25px"></div>-->
	

	<h3 class="snippets text-center">${msg }</h3>
	
	<h3 style ="text-decoration:underline;margin-top:25px;margin-left:110px"><b>MANAGE SUPPLIERS :</b></h3>
	

	<!-- panel 1 for add new Supplier-->

	<div class="container  myPanel">
		<div class=" formHeader ">
			<div class="row ">
			<div class="col-xs-12 ">
				<c:if test="${check}">
					<div class="panel panel-default ">
						<div class="panel-heading text-center">
							<h4 ">
								<b>Add Supplier</b>
							</h4>
						</div>

						<div class="panel-body">
							<form:form id="addSupplier" class="form-horizontal" method="post"
								action="addSupplier" modelAttribute="Supplier">
								<fieldset>

                                    <div class="form-group">
										<label class="col-xs-3 control-label">Supplier Id</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="sId"
												path="sId"  />
											<form:errors path="sId" cssClass="error" />
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Name</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="sName"
												path="sName" />
											<form:errors path="sName" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier E-mail
										</label>
										<div class="col-xs-7">
											<form:input path="sEmail" type="email" class="form-control"
												name="sEmail" />
											<form:errors path="sEmail" cssClass="error" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Phone
											Number </label>
										<div class="col-xs-7">
											<form:input name="sPhoneNo" type="tel" class="form-control"
												path="sPhoneNo" />
											<form:errors path="sPhoneNo" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Address</label>
										<div class="col-xs-7">
											<form:textarea class="form-control" name="sAddress"
												path="sAddress" rows="3"></form:textarea>
											<form:errors path="sAddress" cssClass="error" />
										</div>
									</div>

									<div class="col-xs-10 ">
										<button type="submit"
											class=" col-xs-2 col-xs-offset-6 btn btn-primary  btn-md ">Add
											New Supplier</button>
									</div>
							</fieldset>
							</form:form>
							</c:if>
						</div>
					</div>
				</div>

	<!-- panel 2 for update  Supplier-->

	<div class="container  myPanel" style ="margin-top:-25px">
		<div class=" formHeader ">
			<div class="row ">
			<div class="col-xs-10 ">
				<c:if test="${!check}">
					<div class="panel panel-default ">
						<div class="panel-heading text-center">
							<h4 ">
								<b>Edit Supplier</b>
							</h4>
						</div>
						
						<div class="panel-body">
							<form:form id="editSupplier" class="form-horizontal" method="post"
								action="updateSupplier" modelAttribute="Supplier">																
								<fieldset>
								
								<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Id</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="sId"
												path="sId"  readonly ="true"/>
											<form:errors path="sId" cssClass="error" />
										</div>
									</div>
								
								
									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Name</label>
										<div class="col-xs-7">
											<form:input type="text" class="form-control" name="sName"
												path="sName" />
											<form:errors path="sName" cssClass="error" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier E-mail
										</label>
										<div class="col-xs-7">
											<form:input path="sEmail" type="email" class="form-control"
												name="sEmail" />
											<form:errors path="sEmail" cssClass="error" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Phone
											Number </label>
										<div class="col-xs-7">
											<form:input name="sPhoneNo" type="tel" class="form-control"
												path="sPhoneNo" />
											<form:errors path="sPhoneNo" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-xs-3 control-label">Supplier Address</label>
										<div class="col-xs-7">
											<form:textarea class="form-control" name="sAddress"
												path="sAddress" rows="3"></form:textarea>
											<form:errors path="sAddress" cssClass="error" />
										</div>
									</div>

									<div class="col-xs-10 ">
										<button type="submit"
											class=" col-xs-2 col-xs-offset-6 btn btn-primary  btn-md ">Update
											Supplier</button>
									</div>												
							</fieldset>
						</form:form>
							</c:if>
						</div>
					</div>
				</div>

				<!-- Panel 3 to view Supplier list and perform edit /delete individual rows -->

				<div class="container myPanel">
					<div class="row ">
						<div class="col-xs-12 ">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4>
										<b>View Supplier List</b>
									</h4>
								</div>

								<div class="panel-body" ng-app="Anahita" ng-controller ="SupplierController">
									<table class="table table-bordered table-sm">
										<thead>
											<tr>									
												<th>Supplier ID</th>
												<th>Supplier Name</th>
												<th>Supplier Address</th>
												<th>Supplier Phone</th>
												<th>Supplier Email</th>
												<th>Action</th>	
											</tr>
										</thead>
										<tbody>
											<tr ng-repeat ="sup2 in Supp | orderBy:'sId'">
												<td>{{sup2.sId}}</td>
												<td>{{sup2.sName}}</td>
												<td>{{sup2.sAddress}}</td>
												<td>{{sup2.sPhoneNo}}</td>
												<td>{{sup2.sEmail}}</td>
												<td class="text-center">
												  <a href="editsupplier?getsid={{sup2.sId}}"><button type="submit"
													 class="btn btn-success">Edit</button>
												  <a href="removesupplier/{{sup2.sId}}"><button style="margin-left: 25px" type="submit" 
													  class="btn btn-danger">Delete</button></a>	       											          
											   </td>								
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
