<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javax.servlet.*,java.sql.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Seeker Home</title>
 <link href="css/style.css" type="text/css"  rel="stylesheet"/>
 <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/table/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/table/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/table/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/table/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/table/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/table/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/table/util.css">
	<link rel="stylesheet" type="text/css" href="css/table/main.css">
 <style>
 .styled-table {
    border-collapse: collapse;
    margin: 40px 0;
    margin-left: -350px;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 800px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }
    .styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
    }
    .styled-table th,
    .styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
.searchbox {  
float: left;  
}  
input {   
font-size: 17px;  
border: 5px solid black;
font-color: black;
}  
.searchbox button {  
  
padding: 8px;  
margin-top: 10px;  
margin-left: 10px;  
background: orange;  
font-size: 20px;  
border: none;  
cursor: pointer;  
}   

 </style>
</head>
<body>
  
<div style="background-color:black;">
<div class="clear-toggle"></div>
							<div id="main-menu" class="collapse scroll navbar-right">
								<ul class="nav">
                                
									<li> <a href="loginsuccess">Home</a> </li>
									
									<li> <a href="viewstatus">View Status</a> </li>
									
									<li class="active"> <a href="viewjobs">Search Jobs</a> </li>
									
									<li> <a href="userprofile">Profile</a> </li>
                                    
									<li > <a href="home">Logout</a> </li>
										
								</ul>
							</div><!-- end main-menu -->
						   
							</div>
							
							<br>
<div  class="searchbox" style="margin-left:575px;">  
<center>
<form action="/viewjobs2">   
<div style="border:5px solid black;">
<input style="border:5px solid black; align:center" type="text" placeholder=" Search...." name="search"><i><h3 style="font-size:15px;">Search</h3></i>  
</div> 
<button type="submit">Submit</button>   
</form> 
</center> 
</div>   
<br><br><br><br><br><br>
<%-- <h1>Login is Successfull-- : ${email} </h1>
 --%>
<% String email = request.getParameter("email");
   if(email!=null)
   session.setAttribute("email",email); 
   else
	  email = (String)session.getAttribute("email");
%>
<%-- <h2 id="c1">Login is Successful- : <%=email %></h2>
 --%>
<% 
session.setAttribute("email",email);
%>


<div style="margin-left: 375px;">
 <table align="center" border="2" class="styled-table">
   <thead>
   <tr>
     <th>Job Title</th>
     <th>Company Name</th>
     <th>Category</th>
     <th>Duration</th>
     <th>Stipend</th>
     <th>Required 10th CGPA</th>
     <th>Required Inter CGPA</th>
     <th>Required PG CGPA</th>
     <th>Requirements</th>
     <th>Description</th>
     <th>Action</th>
   </tr>
 </thead>
<c:forEach var="rec" items="${rec}">
<tbody>
<tr>
  <td>${rec.jobtitle}</td>
  <td>${rec.companyid}</td>
  <td>${rec.category}</td>
  <td>${rec.duration}</td>
  <td>${rec.stiphend}</td>
  <td>${rec.rtpercent}</td>
  <td>${rec.ripercent}</td>
  <td>${rec.rdpercent}</td>
  <td>${rec.requirements}</td>
  <td>${rec.description}</td>
  
  <td><a href="/applyjob/${rec.recid}/<%=email%>">Apply</a></td>
</tr>
</tbody>
</c:forEach>
</body>
</html>