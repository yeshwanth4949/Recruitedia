<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
 <link href="css/style.css" type="text/css"  rel="stylesheet"/>
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      

     <!--styles -->
   
    <link href="css/style.css" type="text/css"  rel="stylesheet"/>


   <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
</head>
<body>
 <!-- Nav Bar Start -->
<div style="background-color:black;">
<div class="clear-toggle"></div>
       
              <div id="main-menu" class="collapse scroll navbar-right">
                <ul class="nav">
                                
                  <li class="active"> <a href="loginsuccessadmin">Home</a> </li>
                  
                  <li > <a href="tutorial">Add Content</a></li>
                  
                  <li > <a href="cards">View Recruiters</a></li>
                  
                  <li > <a href="viewfromadmin">View JobSeekers Status</a></li>
                  
                  <li > <a href="home">Logout</a></li>
                    
                </ul>
              </div><!-- end main-menu -->
</div>
 <!-- Nav Bar End -->

<h2 id="c1">
<% String username = request.getParameter("username");
   if(username!=null)
   session.setAttribute("username",username); 
   else
	  username = (String)session.getAttribute("username");
   %>
   
   Welcome, <%=username
   
%>

</h2>

<!-- Start Slider  -->
        <section id="home" class="home">
             <div class="slider-overlay"></div>
            <div class="flexslider">
                <ul class="slides scroll">
                    <li class="first">
                        <div class="slider-text-wrapper">  
                            <div class="container">
                                
                            </div>       
                        </div>
                        <img src="images/slider/1.jpg" alt="">
                    </li>
                    
                    <li class="secondary">
                        <div class="slider-text-wrapper"> 
                            <div class="container">                       
                                
                            </div>
                         </div>
                        <img src="images/slider/2.jpg" alt="">
                    </li>
                    
                    <li class="third">
                        <div class="slider-text-wrapper"> 
                            <div class="container">                              
                                <!-- <div class="big">Free Responsive Template </div>          
                                <div class="small">Are you ready to buy this theme</div>
                                <a href="#works" class="middle btn btn-white">VIEW PORTFOLIO</a> -->
                             </div>
                        </div>
                        <img src="images/slider/3.jpg" alt="">
                    </li>
                </ul>
            </div>
        </section>
          <!-- End Slider  -->
          
          
          
          
          
            <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/jquery.easypiechart.js"></script>
    <script type="text/javascript" src="js/jquery.appear.js"></script>
    <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

</body>

</html>