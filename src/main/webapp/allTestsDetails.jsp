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
<text><h2>List of Candidates and Tests</h2></text><br>
<table border="1">
				<th>Test Date</th>
				<th>Assessment</th>
				<th>Test Marks</th>
				<th>Email Id</th>
				<th>Total Marks</th>
				<th>Result</th>
				<% int i = 0; %>
				<c:forEach items="${tests}" var="test">
				<% i+=1; %>
				<tr>
			    <td><span id="<% System.out.println("testDate"+i); %>">${test.testDate}</span></td>
				<td><span id="<% System.out.println("assessment"+i); %>">${test.assessment}</span></td>
				<td><span id="<% System.out.println("marks"+i); %>">${test.testMarks}</span></td>
				<td><span id="<% System.out.println("email"+i); %>">${test.user.emailId}</span></td>
				<td><span id="<% System.out.println("totalMarks"+i); %>">${test.totalMarks}</span></td>
				<td><span id="<% System.out.println("result"+i); %>">${test.result}</span></td>
				</tr>
				</c:forEach>
		</table>
</body>
</html>