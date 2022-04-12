<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
 <link href="css/style.css" type="text/css"  rel="stylesheet"/>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<style>


.get-in-touch {
  max-width: 800px;
  margin: 50px auto;
  position: relative;

}
.get-in-touch .title {
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-size: 3.2em;
  line-height: 48px;
  padding-bottom: 48px;
     color: #5543ca;
    background: #5543ca;
    background: -moz-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: -webkit-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: linear-gradient(to right,#f4524d  0%,#5543ca  100%) !important;
    -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important;
}

.contact-form .form-field {
  position: relative;
  margin: 32px 0;
}
.contact-form .input-text {
  display: block;
  width: 100%;
  height: 36px;
  border-width: 0 0 2px 0;
  border-color: #5543ca;
  font-size: 18px;
  line-height: 26px;
  font-weight: 400;
}
.contact-form .input-text:focus {
  outline: none;
}
/* .contact-form .input-text:focus + .label, */
.contact-form .input-text + .label,
.contact-form .input-text.not-empty + .label {
  -webkit-transform: translateY(-24px);
          transform: translateY(-24px);
}
.contact-form .label {
  position: absolute;
  left: 20px;
  bottom: 11px;
  font-size: 18px;
  line-height: 26px;
  font-weight: 400;
  color: #5543ca;
  cursor: text;
  transition: -webkit-transform .2s ease-in-out;
  transition: transform .2s ease-in-out;
  transition: transform .2s ease-in-out, 
  -webkit-transform .2s ease-in-out;
}
.contact-form .submit-btn {
  display: inline-block;
  background-color: #000;
   background-image: linear-gradient(125deg,#a72879,#064497);
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 2px;
  font-size: 16px;
  padding: 8px 16px;
  border: none;
  width:200px;
  cursor: pointer;
}



</style>
</head>
<body>
 <!-- Nav Bar Start -->
<div style="background-color:black;">
<div class="clear-toggle"></div>
       
              <div id="main-menu" class="collapse scroll navbar-right">
                <ul class="nav">
                                
                  <li> <a href="loginsuccessadmin">Home</a> </li>
                  
                  <li class="active"> <a href="tutorial">Add Content</a></li>
                  
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
   
   <%-- Login is Successful : <%=username%> --%>

</h2>


<section class="get-in-touch">
   <h1 class="title">Add Content</h1>
 
 
   
<form:form class="contact-form row"  method="post" action="/addcontent" modelAttribute="tut">
      
      
      <div class="form-field col-lg-6">
      	      	 <form:input path="conceptname" class="input-text js-input" type="name" />
         <label class="label" for="name">Concept Name</label>
      </div>
      <div class="form-field col-lg-6 ">
      	 <form:input path="videolink" class="input-text js-input" type="text" />
         <label class="label" for="email">Video Link</label>
      </div>
      <div class="form-field col-lg-6 ">
      
         <form:input path="quetionslink" class="input-text js-input" type="text" />
         <label class="label" for="photo">Questions link</label>
      </div>
       <div class="form-field col-lg-6 ">
       	
         <form:input path="description" class="input-text js-input" type="text" />
         <label class="label" for="website">Description</label>
      </div>
     
      <div class="form-field col-lg-12">
         <input class="submit-btn" type="submit" value="Add">
      </div>
      
</form:form>

</section>


</body>

</html>