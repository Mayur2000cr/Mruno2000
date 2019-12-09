<%@page import="modal.viewquizques"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.questionbean,modal.questionmodal,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<h1>View Question</h1>
<%
List<questionbean> list=viewquizques.getAllRec();
request.setAttribute("list",list);
%>
<table>
<tr>
<th>ID</th>
<th>Question</th>
<th>Option1</th>
<th>Option2</th>
<th>Option3</th>
<th>Option4</th>
<th>Answere</th>
<th>Description</th>
<th>Subject</th>
</tr>



</table>
<c:forEach items="${list}" var="u">
<td>${u.getQid()}</td>
<td>${u. }</td>


</c:forEach>

</body>
</html>