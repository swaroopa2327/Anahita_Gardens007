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

<title>Anahita Gardens - Contact Us</title>
<style>
.error {
	color: red;
	font-weight: bold;
	font-size: 9pt;
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

	<hr>
	<!-- End of Page header -->



	<!-- START OF CONTACT US PAGE CONTENTS  -->

	<!-- CONTACT US PANEL  -->


	<div class="container ">
		<div class=" formHeader text-center">
			<div class="row ">
				<div class="col-md-5">
					<div class="panel panel-default myPanel">
						<div class="panel-heading" style="background-color:#d6ff99">
								<h4 class="panel-title text-center">
									<img src="resources/images/c3.jpg" />
								</h4>
						</div>
						<div class="panel-body" style ="background-color:lightcyan">
								<div style="width: 100%">
									<iframe width="100%" height="350"
										src="https://www.maps.ie/create-google-map/map.php?width=100%&amp;height=350&amp;hl=en&amp;coord=10.9490882,76.93577479999999&amp;q=10A%2C%20Kamakshi%20Nagar%20%2C%20Kovaipudur%2C%20Coimbatore+(Anahita%20Gardens)&amp;ie=UTF8&amp;t=&amp;z=16&amp;iwloc=A&amp;output=embed"
										frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
										<a
											href="https://www.mapsdirections.info/it/misura-distanza-area-google-maps.html">Misurare
											l'area di una superficie con Google Maps</a>
									</iframe>
								</div>
								<div class="panel-body " style="margin-bottom: 5px;">
									<p style="text-align: left">
										<strong>1122334455 </strong><br> <br> <strong>
											e-mail us @ :abcdef@gmail.com </strong><br> <br>
									</p>
								</div>
						</div>
					</div>
				</div>


				<!-- ENQUIRY FORM PANEL-->

				<div class="col-md-7">
					<div class="panel panel-default myPanel">
						<div class="panel-heading"style="background-color:#d6ff99">
							<h4 class="panel-title text-center header">
								<img src="resources/images/e2.jpg" />
							</h4>
						</div>
						<div class="panel-body" style="background-color:lightcyan">
							<form:form id="enquiryForm" method="post" class="form-horizontal"
								action="postEnquiry" modelAttribute="EnquiryForm">
								<fieldset>

									<div class="form-group">
										<label class="col-sm-2 control-label">First Name </label>
										<div class="col-sm-8">
											<form:input path="enFname" type="text" class="form-control"
												name="enFname" placeholder="Enter your First Name" />
											<form:errors path="enFname" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Last Name</label>
										<div class="col-sm-8">
											<form:input path="enLname" type="text" class="form-control"
												name="enLname" placeholder="Enter your last Name" />
											<form:errors path="enLname" cssClass="error" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">E-mail </label>
										<div class="col-sm-8">
											<form:input path="enEmail" type="email" class="form-control"
												name="enEmail" placeholder="Enter your email address" />
											<form:errors path="enEmail" cssClass="error" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Telephone </label>
										<div class="col-sm-8">
											<form:input name="enPhno" type="tel" class="form-control"
												path="enPhno" placeholder="+CountryCode-MobileNumber" />
											<form:errors path="enPhno" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Subject</label>
										<div class="col-sm-8">
											<form:input name="enSub" type="text" class="form-control"
												path="enSub" placeholder="Enter Subject" />
											<form:errors path="enSub" cssClass="error" />

										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">Message</label>
										<div class="col-sm-8">
											<form:textarea class="form-control" name="enMsg" path="enMsg"
												placeholder="Enter your enquiry for us here. We will get back to you within 2 business days."
												rows="7"></form:textarea>
											<form:errors path="enMsg" cssClass="error" />

										</div>
									</div>

									<div class="col-sm-10 ">
										<button type="submit"
											class="signup-btn btn-primary col-sm-3 col-md-offset-5">
											Submit Enquiry</button>
									</div>

								</fieldset>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END OF PANELS AND CONTACT US PAGE CONTENTS -->

</body>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
<!--END OF PAGE FOOTER -->

</html>

