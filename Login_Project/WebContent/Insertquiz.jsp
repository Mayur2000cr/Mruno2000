<%@page import="modal.questionmodal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.questionbean,modal.questionmodal" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="q" class="bean.questionbean"></jsp:useBean>
<jsp:setProperty property="*" name="q"/>
<%

int i=questionmodal.save1(q);
if(i>0)
{
	System.out.println("success");
}
else
{
	System.out.println("error");
}
%>


</body>
</html>