<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
String user=request.getParameter("uname");
String pwd=request.getParameter("pass");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root", "");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into members(firstname,lastname,email,uname,pass,regdate)values('"+fname+"','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
if(i>0)
{
	response.sendRedirect("entry.jsp");
}

%>

</body>
</html>