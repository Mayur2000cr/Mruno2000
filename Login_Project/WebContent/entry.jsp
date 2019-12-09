<!DOCTYPE html>
<html>
<head>
<title>Welcome to NIIT TECH</title>
<link rel="stylesheet" type="text/css" href="loginpage/css/login.css">
</head>
<body>
<div class="headermain">
<div id="sitelogo">ONLINE QUIZ</div>
<div class="menulist"></div>
<div style="clear:both;"></div>
</div>
<br><br>
<br><br>
<center>
<div class="solid">
<form action="profile/controller/Sign_in_controller.jsp">
<center>
<br>
<font size="6.5" class="font"><b>Login</b></font>
<br><br>
<table>
<tr>
<td><h1 class="color">Username:</h1></td></tr>
<tr>
<td><input class="input" type="text" name="user_name" placeholder="Enter your username"></td>
</tr>
<tr>
<td><h2 class="color">Password:</h2></td></tr>
<tr>
<td><input class="input" type="password" name="password" placeholder="Enter your password"></td>
</tr>
</table>
<br>
<button class="button">Submit</button>
<br>
<br>
</center>
</form>
<%
String message=(String)session.getAttribute("login_message");
if(message!=null){
out.println(message);
session.removeAttribute("login_message");
}
%>
</div>
</center>
</body>
</html>