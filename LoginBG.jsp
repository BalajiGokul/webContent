<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  
    import = "java.sql.*"
    import = "java.util.*"
    %>
    <%@page import="com.project.util.DatabaseConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<table border="2">
<tr>
<td>Name          </td>
<td>Password      </td>
<td>email_id      </td>
</tr>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
if(username.equals(password))
{

	Connection c =null;
	c= DatabaseConnection.getDB();
	PreparedStatement ps = null;
	String query="";
	query="select * from sample";
	ps=c.prepareStatement(query);
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
//		System.out.println(rs);
		%>
    <tr><td><%rs.getString(1); %></td></tr>
    <tr><td><%rs.getString(2); %></td></tr>
    <tr><td><%rs.getString(3); %></td></tr>
        <%
	}
	
}
else
{ 
	%>
	<jsp:forward page="LoginSuccessfull.html" />
	<%

	%>
	<jsp:forward page="LoginUnsuccessfull.html"/>
	<%
}

%>
</table>
</body>
</html>