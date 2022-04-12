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
    margin-left: -150px;
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
form.example input[type=text] {
  padding: 8px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 8px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
form{
  margin-left: 500px;
}
 </style>
</head>
<body>
<div style="background-color:black;">
<div class="clear-toggle"></div>
							 <div id="main-menu" class="collapse scroll navbar-right">
                <ul class="nav">
                                
                  <li > <a href="loginsuccessadmin">Home</a> </li>
                  
                  <li > <a href="tutorial">Add Content</a></li>
                  
                  <li> <a href="cards">View Recruiters</a></li>
                  
                  <li class="active"> <a href="viewfromadmin">View JobSeekers Status</a></li>
                  
                  <li > <a href="home">Logout</a></li>
                    
                </ul>
              </div><!-- end main-menu -->
							</div>

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

<div style="margin-left: 350px;">
 <table align="center" border="2" class="styled-table">
   <thead>
   <tr>
     <th>Job Title</th>
     <th>Category</th>
     <th>Duration</th>
     <th>Stiphend</th>
     <th>JobSeeker Id</th>
     <th>Requirements</th>
     <th>View Profile</th>
     <th>Status</th>
   </tr>
 </thead>
<c:forEach var="rec" items="${rec}">
<tbody>
<tr>
  <td>${rec.jobtitle}</td>
  <td>${rec.category}</td>
  <td>${rec.duration}</td>
  <td>${rec.stiphend}</td>
  <td>${rec.jobseekerid}</td>
  <td>${rec.requirements}</td>
  <td><a href="/viewuserprofile/${rec.jobseekerid}">Click Here</a></td>
  
  <td>${rec.status}</td>
</tr>
</tbody>
</c:forEach>


</body>
</html>