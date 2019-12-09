<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.quiz.repository.QuizDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="question/style2.css">
<title>View Que</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="bean.questionbean,modal.questionmodal, java.util.Scanner" %>
<form  action="EvaluateAns">
<header>
			<div class="pull-left">QUIZ</div>
			<div class="pull-right">Total: 10 Question</div>
		</header>
<%
int queCnt=-1;

String subject=request.getParameter("subject");
ResultSet result=QuizDao.getQuiz(subject);

while(result.next()){
	queCnt++;
	
%>

<h3>Question <%= queCnt+1 %>: <%= result.getString(1) %></h3>
<ul>
<h4><input type='radio' name="que<%= queCnt %>" value="<%= result.getString(2) %>">A. <%= result.getString(2) %></h4>
<h4><input type='radio' name="que<%= queCnt %>" value="<%= result.getString(3) %>">B. <%= result.getString(3) %></h4>
<h4><input type='radio' name="que<%= queCnt %>" value="<%= result.getString(4) %>">C. <%= result.getString(4) %></h4>
<h4><input type='radio' name="que<%= queCnt %>" value="<%= result.getString(5) %>">D. <%= result.getString(5) %></h4>
<input type='hidden' name="ans<%= queCnt %>" value="<%= result.getString(6) %>"/>
 </ul> 
<%} %>

<center>
<input type='hidden' name="queCnt" value="<%= queCnt %>"/>
<input type="submit" value="Submit Test"/>
</center>
</form>


</body>
</html>