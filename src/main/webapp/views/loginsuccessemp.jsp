<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter</title>
 <link href="css/style.css" type="text/css"  rel="stylesheet"/>
</head>
<body>
 <!-- Nav Bar Start -->
<div style="background-color:black;">
<div class="clear-toggle"></div>
       
              <div id="main-menu" class="collapse scroll navbar-right">
                <ul class="nav">
                                
                  <li> <a href="recruiter_home">Home</a> </li>
                  
                  <!-- <li> <a href="#">About</a> </li> -->
                                    
                                   
                    <li class="active"> <a href="viewStudents">View Applicants</a> </li>
                                    
                                     
                  <li> <a href="#">Post a Job</a> </li>
                  
                  
                  <li > <a href="#">My Profile</a></li>
                  
                  <li > <a href="home">Logout</a></li>
                    
                </ul>
              </div><!-- end main-menu -->
</div>
 <!-- Nav Bar End -->
<% String username = request.getParameter("username");
   if(username!=null)
   session.setAttribute("username",username); 
   else
	  username = (String)session.getAttribute("username");
%>
</body>

</html>