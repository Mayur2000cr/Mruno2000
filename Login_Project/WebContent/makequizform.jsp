<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="application/jobvalid.css">

<meta charset="ISO-8859-1">
<title>Make Quiz</title>
</head>
<body>
<p id="demo"></p>

<script>


</script>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/quiz";%>
<%!String user = "root";%>
<%!String psw = "";%>
<div class="headermain">
<div id="sitelogo">ONLINE QUIZ</div>
<div style="clear:both;"></div>

</div>
<br>
<br>

<center>
<div class="solid">
<br>
<font size="6"><b></b></font>
<br>
<br>
<form name="myform"action="quizquestion.jsp" method="get" >
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


<center>
<table>



<center>

<table>
<tr>
<td><font size="5"><b>Add Subject for Quiz</b></font></td></tr>

<tr>
<td><font size="5">Subject </font></td>
<td>
<select class="input1" name="subject">
<%
while(rs.next())
{
String fname = rs.getString("subject"); 
%>
<option value="<%=fname %>">
<%=fname %> 
</option>
<%
}
%>
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

</table>
</center>
<br>
<button type="submit" value="Submit" class="button">Submit</button>

</form>
</div>
</center>
</body>
</html>