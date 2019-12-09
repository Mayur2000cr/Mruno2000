<%@page import="bean.makequizbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="application/jobvalid.css">
<title>Insert title here</title>
</head>
<body>

<form method="get" action="quizquessuccess.jsp" >
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/quiz";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * from quizinfo";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>

<select class="input1" name="subject">
<%int sub=0;
while(rs.next())
{
String fname = rs.getString("subject"); 
int i=rs.getInt("subid");
System.out.println("i="+i);
System.out.println("id is "+i);
%>
<option value="<%=fname %>">
<%=fname %> 
</option>
<%
}
%>
<tr>
<td><font size="5">Subject:</font></td>
<td>
<select class="input1" name="subject">
</select>
</td>
</tr>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>


<tr><td><input type="submit" value="Submit"></td></tr>

</form>
</body>
</html>