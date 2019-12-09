<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.questionbean,modal.viewquizinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.makequizbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="question/style2.css">
<title>Insert title here</title>
</head>
<body>
<%
List<makequizbean> list=viewquizinfo.getAllRecords();
request.setAttribute("list",list);

%>
<%
String subject=request.getParameter("subject");

%>

	                <form method="post" action="quizques1.jsp" >
	                <input value="<%= subject %>" name="subject">
					<table>
					<tr><td></td><td><input type="hidden" name="subject" /></td></tr>	
					<tr><td>Question 1:</td><td><textarea rows="3" cols="" name="question" ></textarea></td></tr>
					<tr><td>Option1:</td><td><input type="text" name="option1" /></td></tr>	
					<tr><td>Option2:</td><td><input type="text" name="option2" /></td></tr>
					<tr><td>Option3:</td><td><input type="text" name="option3" /></td></tr>
					<tr><td>Option4:</td><td><input type="text" name="option4" /></td></tr>
					<tr><td>Answer:</td><td><input type="text" name="answer" /></td></tr>	
					</br>
					
					
					<tr><td>Description:</td><td><input type="text" name="description" /></td></tr>			
                    <tr><td></td><td><input type="submit" value="Next"></td></tr>
                    <a href="viewquestions.jsp" class="button">Viewquestion</a>
                   
                    </table>
                    </form>




</body>
</html>