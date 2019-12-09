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
<title>Quiz Que</title>
</head>
<body>
<%
List<makequizbean> list=viewquizinfo.getAllRecords();
request.setAttribute("list",list);

%>
<%
String subject=request.getParameter("subject");

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
<font size="6"><b>Add Question</b></font>
<br>
<br>
<form name="myform"action="quizques1.jsp" method="post" onsubmit="return validate()">



<center>

<br>
<table>
<input type="hidden" value="<%= subject %>" name="subject">
<tr>
<td><font size="5">Questions 1:</font></td>
<td><input type="text" name="question" class="input1" autocomplete="off" required>
<span id="ques" class="text-danger font-weight-bold"></span></td>
</tr>
<tr>
<td><font size="5">Option 1:</font></td>
<td><input type="text" name="option1" class="input1" autocomplete="off" required>
<span id="op1" class="text-danger font-weight-bold"></span></td>
</tr>
<tr>
<td><font size="5">Option2:</font></td>
<td><input type="text" name="option2" class="input1" autocomplete="off" required>
<span id="op2" class="text-danger font-weight-bold"></span></td>
</tr>
<tr>
<td><font size="5">Option3:</font></td>
<td><input type="text" name="option3" class="form-control input1" autocomplete="off" required>
<span id="op3" class="text-danger font-weight-bold" ></span></td>
</tr>
<tr>
<td><font size="5">Option4:</font></td>
<td><input type="text" name="option4" class="form-control input1" autocomplete="off" required>
<span id="op4" class="text-danger font-weight-bold" ></span></td>
</tr>
<tr>
<td><font size="5">Answere:</font></td>
<td><input type="text" name="answere" class="form-control input1" autocomplete="off" required>
<span id="ans" class="text-danger font-weight-bold" ></span></td>
</tr>
<tr>
<td><font size="5">Description:</font></td>
<td><input type="text" name="desc" class="form-control input1" autocomplete="off" required>
<span id="desc" class="text-danger font-weight-bold" ></span></td>
</tr>
</table>
</center>
<br>
<center>


</table>
</center>
<br>
<button type="submit" value="Submit" class="button">Submit</button>

</form>
</div>
</center>
	                



</body>
</html>