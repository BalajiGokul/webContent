<%-- <%@ import = "java.sql." --%><%-- <%@ import = "java.util.*" %> --%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<form  name="f1" method="post">
Username:
<input type="text" name="username">
Password:
<input type="password" name="password">
<input type="submit" name="submit" value="login">
<%
System.out.print("hi");
if(request.getParameter("username").equals(request.getParameter("password")))
{
	%>
	<jsp:forward page="LoginSuccessfull.html" />
	<%
}
else
{ 
		
	%>
	<jsp:forward page="LoginUnsuccessfull.html"/>
	<%
}

%>
</form>
</body>
</html>



<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>

<body>

<form action="LoginCheckAdmin.jsp" method="post">

<input type="text" name="uname" value="uname"><br>

<input type="password" name="pass" value="pass"><br>

<input type="radio" name=opt value="Admin">Admin<br>

<input type="radio" name=opt value="User">User<br>

<input type="submit" value="Login">

</form>

</body>

</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"
  import="java.util.*,java.sql.*,com.inautix.ConnectionManager.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%Connection c = null;
    ConnectionManager dc = new ConnectionManager();
    c = dc.getConnection();
    String opt = request.getParameter("opt");
    String name = request.getParameter("uname");
    String pass = request.getParameter("pass");
    if (opt.equals("Admin")) {
      if ((name.equals("Admin")) && (pass.equals("admin"))) {
  %>Succesfully Logged In.
  <% } else {
  %>You Did not Authorise
  <% } } else if (opt.equals("User")) {
      String nname = null;
      String npass = null;
      String s = "select * from user where uname='" + name
          + "' and upass='" + pass + "'";
      PreparedStatement rs = c.prepareStatement(s);
      ResultSet r = rs.executeQuery();
      while (r.next()) {
        nname = r.getString("uname");
        npass = r.getString("upass");
      }
      if (name.equals(nname)) {
        out.print("Succesfull");
      }
    }
  %>
</body>
</html>

--%>