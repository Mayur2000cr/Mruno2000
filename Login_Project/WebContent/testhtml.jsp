<%@page import="bean.Login_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>

<link rel="stylesheet" type="text/css" href="viewopening/jobreport.css">
<%@page import="modal.questionmodal,bean.questionbean,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<meta charset="ISO-8859-1">
<title>View records</title>
<meta name="viewport" content="width=device-width, initial scale=1.0">
</head>
<body>


<%

response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
//request.getSession().invalidate();


%>



<%
List<questionbean> list=questionmodal.getAllRecords("subject");
%>

<div class="headermain">
<div id="sitelogo">Arista <b>Infotech</b></div>
<div style="clear:both;"></div>
<div class="menulist"><a href="http://10.10.4.10:8844/Recruit/profile/controller/Signoutcontroller.jsp" class="button2">Logout</a></div>
<div>
<a href="recordform.html" class="button2">Add Openings|</a>
<a href="application1.jsp" class="button1">Add Application|</a>
<a href="viewround0.jsp" class="button1">View Interviews|</a>
<a href="viewapplicant.jsp" class="button1">View Applications</a>
</div>
</div>
<br>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color:#b3b3b3;
}
th {
  background-color:#262626;
  color:white;
}
</style>

<div class="solid">
<center><h2>JOB OPENINGS</h2>
<!--<form class="form-inline" method="post" action="search.jsp">
 <input type="text" name="jobpro" class="form-control input1" placeholder="Search for Job Profile">
 <br>
 <button type="submit" name="save" class="btn btn-primary button"> Search</button> 
 </form>-->
 </center>
<br>
<table style="overflow:auto;">
<tr>
<th>Job Id</th>
<th>Job Profile</th>
<th>Vacancy</th>
<th>Job Location</th>
<th>Qualification</th>
<th>Experience</th>
<th>Salary</th>
<th>Responsibilities</th>
<th>Skills</th>
<th>Opening Date</th>
<th>Closing Date</th>
<th>Edit</th>
<th>Delete</th>
<th>Eligible</th>
</tr>
		
		<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.getJobid()}</td>
					<td>${u.getJobpro()}</td>
					<td>${u.getVacancy()}</td>
					<td>${u.getJobloc()}</td>
					<td>${u.getQuali()}</td>
					<td>${u.getExp()}</td>
					<td>${u.getSalary()}</td>
					<td>${u.getRoles()}</td>
					<td>${u.getSkills()}</td>
					<td>${u.getJod()}</td>
					<td>${u.getJcd()}</td>
					<td><a href="editform.jsp?id=${u.getJobid()}">Edit</a></td>
					<td><a href="deleterecord.jsp?jobid=${u.getJobid()}">Delete</a></td>
					<td><a href="eligible.jsp?jobid=${u.getJobid()}&jobpro=${u.getJobpro()}&vacancy=${u.getVacancy()}&jobloc=${u.getJobloc()}&quali=${u.getQuali()}&exp=${u.getExp()}&salary=${u.getSalary()}&roles=${u.getRoles()}&skills=${u.getSkills()}&jod=${u.getJod()}&jcd=${u.getJcd()}">Eligible</a></td>
					
				</tr>
		</c:forEach>
		
</table>


<br>
</div>
 

</body>
</html>