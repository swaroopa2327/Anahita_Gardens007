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
<title>Admin Home Page</title>
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

</head>

<body>

<!-- Logged in Admin home -->
	<jsp:include page="navbar.jsp"></jsp:include>


<div class="container">
  <div class="panel panel-default">

    <div class="panel-heading text-center">
            <h4><b>View List of Orders</b> </h4>
    </div>

    <div class="panel-body">
                    
    <div class="row">
        <div class="col-sm-12 col-md-12 text-center">
            <table class="table table-hover table-bordered table-responsive">
                <thead class="thead-default">
                    <tr>
                        <th class="text-center">Order No.</th>
                        <th class="text-center">Order Date</th>
                        <th class="text-center">Customer Name</th>
                        <th class="text-center">Customer Address</th>
                        <th class="text-center">Customer Email</th>
                        <th class="text-center">Total Amount</th>
                        <th class="text-center">View Order Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="col-sm-2"></td>                       
                        <td class="col-sm-2 text-center"><b></b></td>
                        <td class="col-sm-2 " style="text-align: center"></td>
                        <td class="col-sm-2" ><b></b></td>
                        <td class="col-sm-2 "></td>
                        <td class="col-sm-2"></td>
                        <td class="col-xs-4">
                            <a href="buyproductpage">
                                <button type="button" class="btn btn-info btn-sm">View Order Details<span class="glyphicon glyphicon-info"></span> 
                                </button>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>


</body>
<!--   PAGE FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>

</html>