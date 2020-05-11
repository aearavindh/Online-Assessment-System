<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Assessment - Home Page</title>
</head>
<body bgcolor="cyan">
<h1><b>Welcome to Online Assessments</b></h1><br>
<h2><b>Login</b></h2><br><br>
<form action="/login">
<label>Email ID:</label><input type="email" name="email"  id="email" required /><br><br>
<label>Password:</label><input type="password" name="password" id="password" minlength="8" required/><br><br>
<input type="submit" id="login" value="LOGIN"/><br><br>
</form>
<text>New User ? </text><a href="registration.jsp">register here</a>
</body>
</html>