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

<title>Anahita Gardens - Login</title>
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
</style>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="resources/css/myStyle.css">

<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript"
	src="resources/js/bootstrapValidator.min.js"></script>

</head>

<body>

	<!--  NAVIGATION BAR-->

	<jsp:include page="navbar.jsp"></jsp:include>
		<hr style="margin-top:5px">
	


	<!-- pop-up message alerts -->

	<h3 class="snippets text-center">${msg1}</h3>
	<h3 class="snippets text-center">${msg2}</h3>
	<h3 class="snippets text-center">${msg}</h3>
	<h3 class="snippets text-center">${error}</h3>
    <h3 class="snippets text-center">${logout}</h3>
	

	<!-- <h3 class ="snippets text-center">${msg3 }</h3>-->



	<div class="container">
		<div class=" formHeader ">
			<div class="row ">
				<div class="col-lg-5 col-xs-offset-3 ">
					<div class="panel panel-default">

						<div class="panel-heading text-center"
							style="background-color: #d6ff99">
							<img src="resources/images/login.jpg" />
						</div>

						<div class="panel-body" style="background-color: lightcyan">
							<form id="loginForm" class="form-horizontal" method="POST"
								action="loginSecurityCheck">
								<fieldset>

									<div class="form-group">
										<label class="control-label sr-only">User Name</label>
										<div>
											<input type="text" class="form-control "
												name="myUsername"
												required="true" placeholder="Enter your username" />
											<!--<form:errors path="myUsername" cssClass="error" />-->

										</div>
									</div>

									<div class="form-group">
										<label class="control-label sr-only">user password</label>
										<div>
											<input type="password" class="form-control "
												name="myUserpswd" required="true" placeholder="Enter your password" />

										</div>
									</div>

									<div>
										<button type="submit"
											class="login-button btn-primary btn-md col-xs-4 ">Login
										</button>
									</div>

									<div class="etc-login-form pull-right">
										<p>
											New user ? <a href="SignUp"><b>Sign Up</b></a>
										</p>
									</div>


								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<div style="margin-bottom: 50px"></div>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
<!--END OF PAGE FOOTER -->



</html>