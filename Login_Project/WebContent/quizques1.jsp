<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modal.questionmodal,bean.questionbean" %>
<%@ page import="modal.viewquizinfo,bean.makequizbean" %>
<%@ page import="java.util.List" %>
<% int counter=0; %>
<% String subject=request.getParameter("subject"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
131656845
<%
List<makequizbean> list=viewquizinfo.getAllRecords();
request.setAttribute("list",list);

%>

<jsp:useBean id="w" class="bean.questionbean"></jsp:useBean>
<jsp:setProperty property="*" name="w"/>
<%
counter++;
System.out.print("Subject: "+request.getParameter("subject"));
if(counter<10)
{
	System.out.print("Subject: "+request.getParameter("subject"));
    int i=questionmodal.save(w);
    String sub=request.getParameter("subject");
    System.out.println("i="+i);
    if(i>0)
    {
    	System.out.println(request.getParameter("answere"));
    	System.out.println(request.getParameter("desc"));
    	System.out.println(request.getParameter("subject"));
    	System.out.print("Subject: "+request.getParameter("subject"));
     request.setAttribute("subject",request.getParameter("subject"));
	 response.sendRedirect("quizquestion.jsp?subject="+sub);
    }
    else
   { 
    	System.out.println(" nahihorahai");
	response.sendRedirect("quizqueserror.jsp");
    } 
}
else
{
System.out.println("DONE");	
}
%>
53132
</body>
</html>