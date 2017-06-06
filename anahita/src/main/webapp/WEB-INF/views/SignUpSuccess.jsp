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
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="resources/css/myStyle.css">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>

</head>

<body>
	<!-- START OF NAVIGATION BAR-->

	<jsp:include page="navbar.jsp"></jsp:include>

	
	<!-- END OF NAVBAR -->


<!-- Registration Success Message -->

	<hr style="padding-bottom: 9px; margin: 10px 115px">

<div class="container" style ="margin-top:75px">
  <div class="panel panel-success">
    <div class="panel-heading">
      <h2 class="panel-title"><strong> Registration Success !</strong></h2>
    </div>
    <div class="panel-body alert  alert-success"">
              <p style ="color:black"  >
              <strong> ${msg}</strong><br><br>
              <a class="btn btn-primary" href="LoginPage">Login</a> to  explore and access complete  features!
              </p>
    </div>
  </div>
  
</div>

</body>
<!--START OF PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
<!--END OF PAGE FOOTER -->

</html>

