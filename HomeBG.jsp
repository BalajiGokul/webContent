<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Farmer's Friend</title>
</head>
<body>
<%
String input=request.getParameter("button");
if(input.equals("Login"))
{
	%>
	<jsp:forward page="LoginPage.html"></jsp:forward>
	<%
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

