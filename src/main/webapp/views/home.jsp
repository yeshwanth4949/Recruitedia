<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en-gb" class="no-js">
  <head>
    <meta charset="utf-8">
	<title>Recruitedia</title>
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">		
		
	<!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <style>
      
      video {
  width: 100%;
  height: auto;
}
      
      </style>

     <!--styles -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.transitions.css" rel="stylesheet">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" href="css/etlinefont.css">
    <link href="css/style.css" type="text/css"  rel="stylesheet"/>
	<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'><link rel="stylesheet" href="./style.css">
	

   <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        
    
	<body  data-spy="scroll" data-target="#main-menu">
 

  <!--Start Page loader -->
  <div id="pageloader">   
        <div class="loader">
          <img src="images/progress.gif" alt='loader' />
        </div>
   </div>
   <!--End Page loader -->
   
      
   <!--Start Navigation-->
		<header id="header">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
								<span class="sr-only">Toggle navigation</span>
								<span class="fa fa-bars"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
                            <!--Start Logo -->
							 <div class="logo-nav">
								<a href="index.html">
									<img style="width:200px;" src="images/logo.jpg" alt="Company logo" />
								</a>
							</div> 
                            <!--End Logo -->
							<div class="clear-toggle"></div>
							<div id="main-menu" class="collapse scroll navbar-right">
								<ul class="nav">
                                
									<li class="active"> <a href="home">Home</a> </li>
									
									<!-- <li> <a href="#about">About</a> </li> -->
                                    
                                   
								    <li> <a href="addstudent">Job Seeker</a> </li>
																		
									<li> <a href="addrecruiter">Recruiter</a></li>
                                    
                                     
									<li> <a href="addadmin">Admin</a> </li>
										
								</ul>
							</div><!-- end main-menu -->
						</div>
					</div>
				</div>
			</header>
    <!--End Navigation-->

      
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



 <!--Start Why Choose us-->
  <section id="why-choose" class="section">
       <div class="container">
           <div class="row">
           
                 <div class="title-box text-center">
                    <h2 class="title">About Modules</h2>
                 </div>
              
              <!--start tabs-->
              <div class="col-md-6">
                  <div class="tabs tabs-main">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#one" data-toggle="tab">Job Seeker</a></li>
            <li><a href="#two" data-toggle="tab">Recruiter</a></li>
            <li><a href="#three" data-toggle="tab">Admin</a></li>
          </ul>
          <div class="tab-content">

            <!--Start Tab Item #1 -->
            <div class="tab-pane in active" id="one">
              <p>
              -> Have to register and login through their registered credentials<br>
   -> Can be able to update their profile based on their skills<br>
   -> Can be able to view all the jobs which are in their eligibility criteria.<br>
   -> Can apply for any placements based on their eligibility <br>
   -> Can able check their status of job applications<br>
                </p>
            </div>
            <!-- End Tab -->

            <!--Start Tab Item #2 -->
            <div class="tab-pane" id="two">
              <p>
              -> Have to send request to the admin by registering into our website and login to the website by requested credentials .<br>
   -> Able to view the profiles of users who apply for their organizations<br>
   -> Can conduct an online placement drives for users<br>
   -> Can conduct mock tests for applied users<br>
              
                 </p>
            </div>
            <!-- End Tab -->

            <!--Start Tab Item #3 -->
            <div class="tab-pane" id="three">
              <p>
              -> Can login without any registration process<br>
   -> Allowing the Recruiters to login into our this website by accepting the requests from the organization<br>
   -> Able to view the details of users and recruiters<br>
   -> Can be able to remove the access to the organization<br>
   -> Be able to add the assignments and learning paths to the users.<br>
              
                </p>
            </div>
            <!-- End Tab -->

          </div>
        </div>
              </div>
             <!-- End Tabs-->
            
            
              
           </div> <!--/.row-->
       </div> <!--/.container-->
  </section>
  <!--End Why Choose us-->

<div class="title-box text-center">
                    <h2 class="title">What we provide</h2>
                 </div>
  
 <div class="flex flex-wrap -m-3">
  
<c:forEach var="tut" items="${tut}">
 
  <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col p-3">
    <div class="bg-white rounded-lg shadow-lg overflow-hidden flex-1 flex flex-col">
      
      
      <div class="p-4 flex-1 flex flex-col">
        <h3 class="mb-4 text-2xl">Name : <b>${tut.conceptname}</b></h3>
        <h3 class="mb-4 text-2xl"><a href="${tut.videolink}"> <i>${tut.conceptname} Video Link</i></a></h3>
        		<%-- <video width="400" controls>
  					<source src="${tut.videolink}" type="video/mp4">
  					<source src="${tut.videolink}" type="video/ogg">Your browser does not support HTML5 video.
					</video> --%>
					
					<iframe width="500" height="345" src="${tut.videolink}">
</iframe>
					
        <h3 class="mb-4 text-2xl"><a href="${tut.quetionslink}"> ${tut.conceptname} Questions Link</a></h3>
        <h3 class="mb-4 text-2xl">Description : ${tut.description}</h3>
        <div class="mb-4 text-grey-darker text-sm flex-1">
          <p></p>
          </div>
      </div>
    </div>  
  </div>
      </c:forEach>
</div>
 
 
    
  <!--Start Team-->
  <section id="team" class="section">
		<div class="container">
            <div class="row">
                    
             <div class="title-box text-center">
                <h2 class="title">Team</h2>
             </div>
              
             </div>
			
                <!-- Team -->
				<div class="team-items team-carousel">
                      <!-- Team Member #1 -->
                      <div class="item">
                          <img src="images/team/222.jpg" alt=""  />
                          <h4>Yeshwanth</h4>
                          <h5>Developer</h5>
                          <p>Info
                          <!-- Lorem ipsum dolor consectetur dolor consectetur adipisicing incididunt eiusmod temporcd incididunt consectetur laboredolore dolor adipisicing.  -->
                          </p>
                          
                          <div class="socials">
                              <ul>
                               <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                               <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                               <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                               <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                              </ul>
                          </div>
                      </div>
                      <!-- End Member -->
                      
                      <!-- Team Member #2 -->
                      <div class="item">
                          <img src="images/team/940.jpg" alt=""  />
                          <h4>Chandra Sekhar</h4>
                          <h5>Developer</h5>
                          <p>
                          Info
<!--                           Lorem ipsum dolor consectetur dolor consectetur adipisicing incididunt eiusmod temporcd incididunt consectetur laboredolore dolor adipisicing. 
 -->                          </p>
                          
                          <div class="socials">
                              <ul>
                               <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                               <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                               <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                               <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                              </ul>
                          </div>
                      </div>
                      <!-- End Member -->
                      
                      <!-- Team Member #3 -->
                      <div class="item">
                          <img src="images/team/pk.jpg" alt=""  />
                          <h4>Pavan Karthik</h4>
                          <h5>Developer</h5>
                          <p>
                          Info
<!--                           Lorem ipsum dolor consectetur dolor consectetur adipisicing incididunt eiusmod temporcd incididunt consectetur laboredolore dolor adipisicing. 
 -->                          </p>
                          
                          <div class="socials">
                              <ul>
                               <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                               <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                               <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                               <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                              </ul>
                          </div>
                      </div>
                      <!-- End Member -->
                      
                       <!-- Team Member #4 -->
                      <!-- <div class="item">
                          <img src="images/team/team1.jpg" alt=""  />
                          <h4>Jonh Doe</h4>
                          <h5>Photogropher</h5>
                          <p>Lorem ipsum dolor consectetur dolor consectetur adipisicing incididunt eiusmod temporcd incididunt consectetur laboredolore dolor adipisicing. </p>
                          
                          <div class="socials">
                              <ul>
                               <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                               <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                               <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                               <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                              </ul>
                          </div>
                      </div>
 -->                      <!-- End Member -->
                      
				</div>
                <!-- End Team -->
			</div>
            <!-- End Content -->
	</section>
  <!--End Team-->


   
 
  
 
    
   
  
   
   
   <!--Start Footer-->
   <footer>
       <div class="container">
           <div class="row">
               <!--Start copyright-->
               <div class="col-md-6 col-sm-6 col-xs-6">
                   <div class="copyright"><p>Copyright © 2021 All Rights reserved by: <a href="#">Team Placement Portal</a>
                 </p></div>
               </div>
               <!--End copyright-->
               
               <!--start social icons-->
               <div class="col-md-6 col-sm-6 col-xs-6">
                   <div class="social-icons">
                       <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                       </ul>
                    </div>
               </div>
               <!--End social icons-->
           </div> <!-- /.row-->
       </div> <!-- /.container-->
   </footer>
   <!--End Footer-->

<!--    <a href="#" class="scrollup"> <i class="fa fa-chevron-up"> </i> </a>
 -->
    <!--Plugins-->
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