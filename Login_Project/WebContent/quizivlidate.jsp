<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
session.removeAttribute("userses");
session.setAttribute("quizcreated","Thanks quiz is created");
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/Login_Project/homepage.jsp";
</script>

</body>
</html>