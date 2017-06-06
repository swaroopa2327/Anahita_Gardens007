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
          
    <title>Anahita Gardens-About Us</title>

    <link rel="stylesheet" href="resources/css/bootstrap.min.css" >
    <link rel="stylesheet" href="resorces/css/bootstrapValidator.min.css">
    <link rel="stylesheet" href="resources/css/myStyle.css">
    
    <script src="resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
   
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>   
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type="text/javascript" src="resources/js/bootstrapValidator.min.js"></script>
     
</head>

<body >
<!-- Start of Navigation bar-->
<jsp:include page="navbar.jsp"></jsp:include>

<div style= "margin-top:5px"></div>
<!-- Start of About us Content-->
  <div class="container myCompany col-xs-offset-1" style="background-color:lightcyan" >
      <div class="row">
          <div class ="col-md-11" style="margin-left:45px">
              <div class ="media"style="margin-top:10px" >
                   <div class ="media-left media-top">
                        <img src ="resources/images/Company.jpg"  class ="media-object"/>
                   </div>

                  <div class ="media-body">
                      <h3 class ="media-heading"> The Company </h3>
                      <p >
                        The journey of Anahita Gardens began in 2011 .Started as a mere hobby of two passionate gardening enthusiasts Mrs.Swaroopa and her son Mr.Sutirtha , the company has now scaled heights due to the quality services we offer and the valuable trust and satisfaction our customers have in us.<br>
                        We offer a wide range of plants for gardens, terraces, houses and offices .All our plants are  exclusively propagated and maintained in our own nursery. We specialize in hibiscus,roses,orchids and bromeliads.<br>
                        We also sell a variety of  pots ,planters and Garden Decor items to pep up your garden and add zing to your living spaces !
                       <br>
                      </p>
                  </div>
              </div>

              <div class ="media">
                  <div class ="media-left media-top">
                    <img src ="resources/images/nursery.jpg"  class ="media-object"/>
                  </div>

                  <div class ="media-body">
                     <h3 class ="media-heading">The Nursery </h3>
                     <p>
                        We have a sprawling in-house nursery spread over 10 acres of land.The nursery is fully furnished with automated irrigation systems and greenhouse .<br>All our plants are carefully propagated and nurturted under the best optimum conditions.The plants are categorically  displayed  so that our customers can easily spot their plant  to suit their needs.<br>
                        The aesthetically alluring greenery is undoubtedly an  antidote to rejenuvate your mind and soul !
                         <br><br>
                     </p>
                  </div>
              </div>

              <div class ="media">
                  <div class ="media-left media-top">
                    <img src ="resources/images/team.jpeg"  class ="media-object"/>
                  </div>

                  <div class ="media-body">
                     <h3 class ="media-heading"> The People </h3>
                     <p >
                        Our strength is our team of dedicated and trained garderners , motivated and professional sales & marketing executives , who continously strive to achieve our core values to provide quality and reliable services to our customers.
                     </p>
                  </div>
              </div>

          </div>
      </div>
</div>

<!-- End of About Us Content--> 
</body>

<!--Start of Page Footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!--End  of Page Footer -->

</html>
