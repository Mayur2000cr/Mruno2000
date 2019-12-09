<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.questionbean,modal.viewquizinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.makequizbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="application/jobvalid.css">
<title>After Quiz</title>
</head>
<body>
<%
int marks=Integer.parseInt(request.getParameter("marks"));
//out.println("marks="+marks);
int quecnt=Integer.parseInt(request.getParameter("que"));
//out.println("question="+quecnt);
float per;
per=(marks*100)/quecnt;
//out.println("percent="+per);
if(per>=50)
//	out.println("<div class='alert alert-success'><strong>Congratulations!</strong> You have successfully passed exam.</div>");

//	out.println("<div class='alert alert-warning'><strong>Oops!</strong> You have failed the exam.</div>");
%>
<p id="demo"></p>
<div class="headermain">
	<div id="sitelogo">ONLINE QUIZ
      <div class="menulist"><a href="http://localhost:8080/Login_Project/profile/controller/Signoutcontroller.jsp" class="button2">Logout</a></div>
	</div>
</div>
<div style="clear:both;"></div>

<br>
<br>
<center>
<div class="solid">
<br>
<font size="6"><b>Test Result</b></font>
<br>
<br>
<form name="myform"action="" method="post" onsubmit="return validate()">



<center>

<br>
<table>
<tr>
<td><font size="5">Marks:</font></td>
<td><input type="text" name="marks" value="<%=marks %>" class="input1" autocomplete="off" required>
<span id="ques" class="text-danger font-weight-bold"></span></td>
</tr>
<tr>
<td><font size="5">No of Question:</font></td>
<td><input type="text" name="que" value="<%= quecnt%>" class="input1" autocomplete="off" required>
<span id="op1" class="text-danger font-weight-bold"></span></td>
</tr>
<tr>
<td><font size="5">Percentage:</font></td>
<td><input type="text" name="per" value="<%= per%>" class="input1" autocomplete="off" required>
<span id="op2" class="text-danger font-weight-bold"></span></td>
</tr>
</table>
</center>
<br>
<center>


</table>
</center>
<br>
<a href="Answere.jsp" class="button"><b>View Answer</b></a>
<br>
</form>
</div>
</center>
	                



</body>
</html>