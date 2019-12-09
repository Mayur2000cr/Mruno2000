<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="openingpage/jov.css">
</head>
<body>
<div class="headermain">
<div id="sitelogo">NIIT <b>TECH</b></div>
<div style="clear:both;"></div>
</div>
<br>
<br>
<script>
function validate()
{   var firstname=document.maind.fnamee.value;
    var lastname=document.maind.last.value;
    var num3=document.maind.email.value;
	var pass=document.maind.pass.value;
	 var username=document.maind.user.value;
	
	//var letters = /^[0-9a-zA-Z]+$/;
	if(firstname.length<2)
	{
	document.getElementById("fname").innerHTML="**First name must be greater than 2 letters";
	return false;
    }
	if(lastname.length<2)
	{
	document.getElementById("lname").innerHTML="**Last name must be greater than 2 letters";
	return false;
    }
	if(num3.indexOf('@')<=0)
	{
	 document.getElementById("email").innerHTML="** Please Enter the email id in proper format";
	 return false;
	 }
	if(pass.length<5)
	{
	document.getElementById("pass").innerHTML="**Password  must not less than 5 letters";
	return false;
	}
	if(username.length<5)
	{
	document.getElementById("user").innerHTML="**User name must be greater than 5 letters";
	return false;
    }
	
	
<!--	if(!skills.match(letters))
	{
	document.getElementById("skills").innerHTML="**Enter alphanumeric values for skills"
	return false;
	}-->
	 }
</script>
<center>
<div class="solid">
<h1>Registration form</h1>
<form class="bg-light" name="maind" action="registration.jsp" method="post" onsubmit="return validate();">
<table>
		<tr>
			<td><font size="5">First Name:</font></td>
			<td><input type="text" name="fname"  class="form-control input1" autocomplete="off" required>
			<span id="fnamee" class="text-danger font-weight-bold">
	        </span></td>
					</tr>
			<tr>
					<td><font size="5">Last Name:</font></td>
					<td><input type="text" name="lname"  class="form-control input1" autocomplete="off" required>
					<span id="last" class="text-danger font-weight-bold">
	                </span>
					</td>
			</tr>
			<tr>
                    <td><font size="5">Email:</font></td>
                    <td><input type="text" name="email" class="input1" autocomplete="off" required>
                    <span id="email" class="text-danger font-weight-bold"></span></td>
           </tr>
			<tr>
					<td><font size="5">User Name:</font></td>
					<td><input type="text" name="uname" class="input1" autocomplete="off" required></td>
					<span id="user" class="text-danger font-weight-bold">
	                </span>
					</td>
			</tr>
			<tr>
					<td><font size="5">Password:</font></td>
					<td><input type="password" name="pass"  class="form-control input1" autocomplete="off" required>
					<span id="pass" class="text-danger font-weight-bold">
					</span>
					</td>
			</tr>
			<tr>
					<td colspan="5">Already registered!! <a href="entry.jsp">Login Here</a></td>
			
			</tr>
			
			
</table>
<br>
<button type="submit" value="Update" class="button">Submit</button>
</form>
</div>
</center>
</body>
</html>