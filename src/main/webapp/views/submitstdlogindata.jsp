<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email = request.getParameter("email");
String pwd = request.getParameter("password");

try {
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3","root","admin");
    PreparedStatement pstmt = con.prepareStatement("select * from student where std_email=? and std_password=?");
    pstmt.setString(1,email);
    pstmt.setString(2,pwd);
	
	ResultSet rs = pstmt.executeQuery(); 
	
     if(rs.next()==true) {	 
    	 //out.println("<h1 align:center>Login Successfull</h1>");
    	 session.setAttribute("email",email);
    	 response.sendRedirect("loginsuccess");
     }
     
     
   
   else 
   {
	   
     response.sendRedirect("addstudent");
   }
	
     
}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>