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
String username = request.getParameter("username");
String password = request.getParameter("password");

try {
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3","root","admin");
    PreparedStatement pstmt = con.prepareStatement("select * from emp_table where username=? and password=?");
    pstmt.setString(1,username);
    pstmt.setString(2,password);
	
	ResultSet rs = pstmt.executeQuery(); 
	
     if(rs.next()==true) {	 
    	 //out.println("<h1 align:center>Login Successfull</h1>");
    	 session.setAttribute("username",username);
    	 response.sendRedirect("loginsuccessemp");
     }
     
     
   
   else 
   {
	   
     response.sendRedirect("addrecruiter");
   }
	
     
}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>