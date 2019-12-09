<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

</head>
<body>
<div class="container">
<%
int marks=Integer.parseInt(request.getParameter("marks"));
out.println("marks="+marks);
int quecnt=Integer.parseInt(request.getParameter("que"));
out.println("question="+quecnt);
float per;
per=(marks*100)/quecnt;
out.println("percent="+per);
if(per>=50)
	out.println("<div class='alert alert-success'><strong>Congratulations!</strong> You have successfully passed exam.</div>");
else
	out.println("<div class='alert alert-warning'><strong>Oops!</strong> You have failed the exam.</div>");
%>



</div>
</body>
</html>