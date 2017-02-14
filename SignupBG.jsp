<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.project.util.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String input=request.getParameter("submit");
if(input.equals("Signup"))
{
	%>
	Signed up successfully :-)
	<%
	Connection c =null;
	c= DatabaseConnection.getDB();
	PreparedStatement ps = null;
	String query="";
	String name=request.getParameter("username");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	query="insert into sample values('"+ name +"','"+password+"','"+email+"')";
	ps=c.prepareStatement(query);
	ps.execute();
}
else
{
	%>
	<jsp:forward page="SignupPage.jsp"></jsp:forward>
	<% 
}
%>
</body>
</html>