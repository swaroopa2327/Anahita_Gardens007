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
<title>Anahita Gardens -Sign Up Page</title>  
<style>
 .error {
 color: red; font-weight: bold ;font-size:9pt;
 }
 .snippets{
 color:red;font-size:12pt;font-weight:bold;
 }
</style>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"> 
<link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="resources/css/myStyle.css">
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>

</head>

<body>
	<!--Navigation bar-->
	<jsp:include page="navbar.jsp"></jsp:include>

	<hr>
	<!-- End of Page header -->

<!-- 
 <div  >
<h3 class ="text-center" ><a href="AdminHome" ><b>GO TO ADMIN PAGE </b></a></h3>
</div>-->
  
	<!-- pop-up message alerts -->
		<h3 class ="snippets text-center">${msg }</h3>
		<h3 class ="snippets text-center">${msg1 }</h3>
		<h3 class ="snippets text-center">${msg2 }</h3>
		<h3 class ="snippets text-center">${msg3 }</h3>
		
			<!-- START OF MEMBER REGISTRATION/SIGN UP -->
		
	<div class="container myPanel">
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-lg-8 col-lg-offset-2 ">
					<div class="panel panel-default">
						<div class="panel-heading text-center" style="background-color:#d6ff99">
							<img src="resources/images/s2.png" />
						</div>

						<div class="panel-body"style="background-color:lightcyan">
							<form:form id="registrationForm" class="form-horizontal"
								method="post" action="adduser" modelAttribute="User">
								<fieldset>
									<legend> Personal Details </legend>

									<div class="form-group">
										<label class="col-sm-2 control-label">First Name </label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control has-error" name="userFname"
												path="userFname" placeholder="Enter your First Name" />
                        					<form:errors path="userFname" cssClass="error"/>
                    					</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Last Name</label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control" name="userLname"
												path="userLname" placeholder="Enter your last Name" />
										     <form:errors path="userLname" cssClass="error"/>

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Date of Birth</label>
										<div class="col-sm-6">
											<form:input type="date" class="form-control" name="userDob"
												path="userDob" placeholder="dd/MM/yyyy" />
										     <form:errors path="userDob" cssClass="error"/>
          
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">E-mail</label>
										<div class="col-sm-6">
											<form:input type="email" class="form-control"
												name="userEmail" path="userEmail" placeholder="email" />
										    <form:errors path="userEmail" cssClass="error"/>

										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Telephone </label>
										<div class="col-sm-6">
											<form:input type="tel" class="form-control" name="userPhno"
												path="userPhno" placeholder="Telephone" />
											 <form:errors path="userPhno" cssClass="error"/>

										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Address </label>
										<div class="col-sm-6">
											<form:textarea class="form-control" name="userAddress"
												path="userAddress" placeholder="Primary Address" rows="5" />
											</textarea>
											
												<form:errors path="userAddress" cssClass="error" />
											
										</div>
									</div>
									<legend>Create a new Account</legend>
									<div class="form-group ">
										<label class="col-sm-2 control-label">User Name</label>
										<div class="col-sm-6">
											<form:input type="text" class="form-control" name="username"
												path="username" placeholder=" Create a unique user name " />											
												<form:errors path="username" cssClass="error"  />
											
										</div>
									</div>
									<div class="form-group required">
										<label class="col-sm-2 control-label">Password</label>
										<div class="col-sm-6">
											<form:input type="password" name="userpswd" path="userpswd"
												placeholder="user password" class="form-control " />											
												<form:errors path="userpswd" cssClass="error" />
											
										</div>
									</div>
									<div class="form-group required">
										<label class="col-sm-2 control-label">Password Confirm</label>
										<div class="col-sm-6">
											<form:input type="password" class="form-control "
												name="confirmPswd" path="confirmPswd"
												placeholder="Retype Password" />
												<form:errors path="confirmPswd" cssClass="error" />
										</div>
									</div>

									<div class="col-sm-10 ">
										<button type="submit" class="signup-btn btn-primary col-sm-3 col-md-offset-5">
										        Submit 
										 </button>
									</div>
								</fieldset>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
<!--END OF PAGE FOOTER -->

</html>

