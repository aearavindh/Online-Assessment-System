<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All User Details</title>
</head>
<body bgcolor="cyan">
<text><h2>List of All Users</h2></text><br>
<table border="1">
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email ID</th>
				<th>User Type</th>
				<% int i = 0; %>
				<c:forEach items="${users}" var="user" varStatus="loop">
				<% i+=1; %>
				<tr>
				<td><span id="<% System.out.println("firstName"+i); %>">${user.firstName}</span></td>
				<td><span id="<% System.out.println("lastName"+i); %>">${user.lastName}</span></td>
				<td><span id="<% System.out.println("email"+i); %>">${user.emailId}</span></td>
				<td><span id="<% System.out.println("userType"+i); %>">${user.userType}</span></td>
				</tr>
				</c:forEach>
		</table>
</body>
</html>