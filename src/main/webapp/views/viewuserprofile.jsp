<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title>Profile- Recruitedia</title>
                                <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                  <link href="css/style.css" type="text/css"  rel="stylesheet"/>
                                
                                <style>
                                /* @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap'); */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box
}

body {
    font-family: 'Poppins', sans-serif;
    background-color:  aliceblue 
}

.wrapper {
    padding: 30px 50px;
    border: 1px solid #ddd;
    border-radius: 15px;
    margin: 10px auto;
    max-width: 600px;
}

h4 {
    letter-spacing: -1px;
    font-weight: 400
}

.img {
    width: 70px;
    height: 70px;
    border-radius: 6px;
    object-fit: cover
}

#img-section p,
#deactivate p {
    font-size: 12px;
    color: #777;
    margin-bottom: 10px;
    text-align: justify
}

#img-section b,
#img-section button,
#deactivate b {
    font-size: 14px
}

label {
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 500;
    color: #777;
    padding-left: 3px
}

.form-control {
    border-radius: 10px
}

input[placeholder] {
    font-weight: 500;
}

.form-control:focus {
    box-shadow: none;
    border: 1.5px solid #0779e4
}

select {
    display: block;
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 10px;
    height: 40px;
    padding: 5px 10px
}

select:focus {
    outline: none
}

.button {
    background-color: #fff;
    color: #0779e4
}

.button:hover {
    background-color: #0779e4;
    color: #fff
}

.btn-primary {
    background-color: #0779e4
}

.danger {
    background-color: #fff;
    color: #e20404;
    border: 1px solid #ddd
}

.danger:hover {
    background-color: #e20404;
    color: #fff
}

@media(max-width:576px) {
    .wrapper {
        padding: 25px 20px
    }

    #deactivate {
        line-height: 18px
    }
}</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>



 <% 
 String email = (String)session.getAttribute("email"); 
/*  String std_name = (String)session.getAttribute("std_name"); 
 String organization = (String)session.getAttribute("organization");  */
 /* String password = (String)session.getAttribute("password"); */
 
/*  
System.out.println("->"+email+","+std_name+","+organization+","+password);
 */ 
 
 
 %>
<%-- <h2 id="c1">Login is Successful- : <%=email %></h2>    
 --%>
<div style="background-color:black;">
<div class="clear-toggle"></div>
							<div id="main-menu" class="collapse scroll navbar-right">
								<ul class="nav">
                                
									<li class="active"> <a href="loginsuccess">Home</a> </li>
									
									<li> <a href="viewstatus">View Status</a> </li>
									
									<li> <a href="viewjobs">Search Jobs</a> </li>
									
									<li> <a href="userprofile">Profile</a> </li>
                                    
									<li > <a href="home">Logout</a> </li>
										
								</ul>
							</div><!-- end main-menu -->
</div>

                                <div class="wrapper bg-white mt-sm-5">
                                
    <h4 class="pb-4 border-bottom">Account settings</h4>

<form:form class="contact-form row" modelAttribute="std">
		
		
	
		

    <div  class="d-flex align-items-start py-3 border-bottom"> <img src="https://images.pexels.com/photos/1037995/pexels-photo-1037995.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" class="img" alt="">
        <div class="pl-sm-4 pl-2" id="img-section"> <b>User: ${std.email }</b>
           <!--  <p>Resume:Accepted file type .pdf. Less than 2MB</p> 
            <button class="btn button border">
            	<b>Upload</b>
            </button> -->
        </div>
    </div>
    <div class="py-2">
        
        <div class="row py-2">
            <div class="col-md-6">
            	<label for="name">Name</label>
            	<form:input path="name" type="text" class="bg-light form-control" value="${std.name}" placeholder="Name" readonly="true"/>
            </div>
            <div class="col-md-6 pt-md-0 pt-3">
            	<label for="organization">Organization</label>
            	<form:input path="organization" type="text" class="bg-light form-control" placeholder="organization" value="${std.organization}" readonly="true" />
            </div>
        </div>
        
        <div class="row py-2">
            <div class="col-md-6"> 
            	<label for="email">Email Address</label> 
            	<form:input type="text" path="email"  class="bg-light form-control" placeholder="E-mail" value="${std.email}" readonly="true"/>

           
            </div>
            <%-- <div class="col-md-6 pt-md-0 pt-3"> 
            	<label for="password">Password</label> 
            	<form:input path="password" type="password" class="bg-dark form-control" placeholder="password" required="required" value="${std.password}" /> 
            </div> --%>
        </div>
        <div class="row py-2">
            <div class="col-md-6"> 
            	<label for="email">Skill 1</label> 
            	<form:input type="text" path="skill1"  class="bg-light form-control"  value="${std.skill1}" readonly="true"/>

           
            </div>
             <div class="col-md-6 pt-md-0 pt-3"> 
            	<label for="text">Skill 2</label> 
            	<form:input type="text" path="skill2" class="bg-light form-control" readonly="true" value="${std.skill2}" /> 
            </div> 
            
            
        </div>
        
        
        
        <div class="row py-2">
           <div class="col-md-6 pt-md-0 pt-3"> 
            	<label for="text">Skill 3</label> 
            	<form:input type="text" path="skill3" class="bg-light form-control"  readonly="true" value="${std.skill3}" /> 
            </div> 
            <div class="col-md-6 pt-md-0 pt-3"> 
            	<label for="text">Branch</label> 
            	<form:input type="text" path="branch" class="bg-light form-control" readonly="true" value="${std.branch}" /> 
            </div> 
            
        </div>
        
        <div class="row py-2">
            <div class="col-md-6">
            	<label for="ssc">SSC CGPA</label>
            	<form:input path="rtpercent" type="number" step="any" value="${std.rtpercent}" class="bg-light form-control" placeholder="SSC CGPA" readonly="true"   />
            </div>
            <div class="col-md-6 pt-md-0 pt-3">
            	<label for="inter">Inter CGPA</label>
            	<form:input path="ripercent" type="number" step="any" value="${std.ripercent}"  class="bg-light form-control" placeholder="Inter CGPA"  readonly="true" />
            </div>
        </div>
        
        
        <div class="row py-2">
            <div class="col-md-6">
            	<label for="degree">Degree </label>
            	<form:input path="rdpercent" type="number" step="any" value="${std.rdpercent}"  class="bg-light form-control" placeholder="Degree CGPA" readonly="true" />
            </div>
            <!-- <div class="col-md-6 pt-md-0 pt-3">
            	<label for="inter">Organization</label>
            	<input type="number" class="bg-light form-control" placeholder="organization">
            </div> -->
        </div>
        
        
         
            <!-- <div class="col-md-6 pt-md-0 pt-3" id="lang"> 
            	<label for="language">Language</label>
                <div class="arrow"> <select name="language" id="language" class="bg-light" multiple>
                        <option value="english" selected>English</option>
                        <option value="english_us">English (United States)</option>
                        <option value="enguk">English UK</option>
                        <option value="arab">Arabic</option>
                    </select>
                </div>
            </div> -->
            
            	<label for="description">Description</label>
            	<form:input path="description" type="text" value="${std.description}" class="bg-light form-control" placeholder="description" readonly="true"/>
      
</form:form>
      
        <!-- <div class="d-sm-flex align-items-center pt-3" id="deactivate">
            <div> <b>Deactivate your account</b>
                <p>Details about your company account and password</p>
            </div>
            <div class="ml-auto"> <button class="btn danger">Deactivate</button> </div>
        </div> -->
        
        
    </div>
</div>
                                <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/Javascript'></script>
                                
                           
                                
</body>
</html>