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

<title>Anahita Gardens - Post Enquiry</title> 
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


	<!-- NAVIGATION BAR-->

	<jsp:include page="navbar.jsp"></jsp:include>


	<hr style="padding-bottom: 9px; margin: 10px 115px"/>
	
	<!--  Post Enquiry Success -->

<div class="container" style ="margin-top:75px">
  <div class="panel panel-success">
    
    <div class="panel-body alert  alert-success">
              <p style ="color:black;font-size:15pt" >
              <strong> Dear ${msg }, <br><br>Thank you for  your enquiry . <br><br> We will get back to you within 2 business days</strong>    
              </p>
    </div>
  </div>
  
</div>

</body>

<!-- PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>


</html>

