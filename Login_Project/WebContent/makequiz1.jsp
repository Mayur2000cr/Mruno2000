<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modal.makequizmodal" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="s" class="bean.makequizbean"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%

  int i=makequizmodal.save(s);
  if(i>0)
  {
  response.sendRedirect("quizquestion.jsp");
 
  }

 else
 {
	 
	System.out.println("succes");
 }
%>
	       







</body>
</html>