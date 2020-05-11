<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body bgcolor="cyan">
<h1><b>Registration</b></h1><br><br>
<form action="/register">
<label>First Name:</label><input type="text" name="firstname"  id="firstname" title="Name can have only alphabets" pattern="[a-zA-Z]+" required /><br><br>
<label>Last Name:</label><input type="text" name="lastname"  id="lastname" title="Name can have only alphabets" pattern="[a-zA-Z]+" required /><br><br>
<label>Email ID:</label><input type="email" name="email"  id="email" required /><br><br>
<label>Password:</label><input type="password" name="password"  id="password" minlength="8" required/><br><br>
<input type="submit" id="register" value="REGISTER"/><br>
</form>
</body>
</html>