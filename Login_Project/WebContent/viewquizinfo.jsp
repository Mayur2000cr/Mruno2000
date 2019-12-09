<%@page import="modal.viewquizinfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="bean.makequizbean,modal.viewquizinfo" %>
<h1>Subject list</h1>
<%
List<makequizbean> list=viewquizinfo.getAllRecords();
request.setAttribute("list",list);

%>
<table>
<tr>
<th>Subject</th>
<th>subid</th>

</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getSubject()}</td>
<td>${u.getSubid()}</td>



</tr>
</c:forEach>

</table>
</body>
</html>